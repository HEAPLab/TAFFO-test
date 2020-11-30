#!/bin/bash

trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM SIGKILL

SCRIPTPATH=$(dirname "$BASH_SOURCE")
cd "$SCRIPTPATH"

TIMEOUT='timeout'
if [[ -z $(which $TIMEOUT) ]]; then
  TIMEOUT='gtimeout'
fi
if [[ ! ( -z $(which $TIMEOUT) ) ]]; then
  TIMEOUT="$TIMEOUT 120"
else
  printf 'warning: timeout command not found\n'
  TIMEOUT=''
fi

if [[ -z $LLVM_DIR ]]; then
  echo -e '\033[33m'"Warning"'\033[39m'" using default llvm/clang";
else
  llvmbin="$LLVM_DIR/bin/";
fi
if [[ -z "$OPT" ]]; then OPT=${llvmbin}opt; fi


compile_one()
{
  benchpath=$1
  xparams=$2
  benchdir=$(dirname $benchpath)
  benchname=$(basename $benchdir)
  $TIMEOUT taffo \
    -o build/"$benchname".out \
    -float-output build/"$benchname".float.out \
    -temp-dir build \
    "$benchpath" \
    ./utilities/polybench.c \
    -I"$benchdir" \
    -I./utilities \
    -I./ \
    $xparams \
    -debug-taffo \
    -lm \
    2> build/${benchname}.log
    
  if [[ $RUN_METRICS -ne 0 ]]; then
    mkdir -p results-out
    taffo-instmix build/"$benchname".out.5.taffotmp.ll > results-out/${benchname}.imix.txt
    taffo-mlfeat build/"$benchname".out.5.taffotmp.ll > results-out/${benchname}.mlfeat.txt
    $OPT -S -O3 -o build/"$benchname".float.out.ll build/"$benchname".out.1.taffotmp.ll
    taffo-instmix build/"$benchname".float.out.ll > results-out/${benchname}.float.imix.txt
    taffo-mlfeat build/"$benchname".float.out.ll > results-out/${benchname}.float.mlfeat.txt
  fi
}

read_opts()
{
  benchpath=$1
  optspath=$(dirname ${benchpath})/$(basename ${benchpath} .c).opts
  if [ -a ${optspath} ]; then
    opts=$(tr '\n' ' ' < ${optspath})
  else
    opts=
  fi
  if [[ "$opts" != *-Xerr* ]]; then
      opts="$opts -Xerr -nounroll -Xerr -startonly"
  fi
  if [[ "$opts" != *-Xvra* ]]; then
      opts="$opts -Xvra -max-unroll=0"
  fi
  echo "$opts"
}


D_MINI_DATASET="MINI_DATASET"
D_SMALL_DATASET="SMALL_DATASET"
D_STANDARD_DATASET="MEDIUM_DATASET"
D_LARGE_DATASET="LARGE_DATASET"
D_EXTRALARGE_DATASET="EXTRALARGE_DATASET"
D_DATA_TYPE='DATA_TYPE_IS_FLOAT'
ONLY='.*'
TOT='32'
D_CONF="CONF_GOOD"
RUN_METRICS=0

for arg; do
  case $arg in
    64bit)
      TOT='64'
      D_DATA_TYPE='DATA_TYPE_IS_DOUBLE'
      ;;
    [A-Z]*_DATASET)
      D_MINI_DATASET=$arg
      D_SMALL_DATASET=$arg
      D_STANDARD_DATASET=$arg
      D_LARGE_DATASET=$arg
      D_EXTRALARGE_DATASET=$arg
      ;;
    CONF_[A-Z]*)
      D_CONF=$arg
      ;;
    --only=*)
      ONLY="${arg#*=}"
      ;;
    --tot=*)
      TOT="${arg#*=}"
      ;;
    metrics)
      RUN_METRICS=1
      ;;
    *)
      echo Unrecognized option $arg
      exit 1
  esac
done

mkdir -p build
rm -f build.log

all_benchs=$(cat ./utilities/benchmark_list)
skipped_all=1
for bench in $all_benchs; do
  if [[ "$bench" =~ $ONLY ]]; then
    skipped_all=0
    printf '[....] %s' "$bench"
    opts=$(read_opts ${bench})
    compile_one "$bench" \
      "-O3 \
      -DPOLYBENCH_TIME -DPOLYBENCH_DUMP_ARRAYS -DPOLYBENCH_STACK_ARRAYS \
      -D$D_CONF -D$D_STANDARD_DATASET \
      -Xdta -totalbits -Xdta $TOT \
      -enable-err $opts"
    bpid_fc=$?
    if [[ $bpid_fc == 0 ]]; then
      bpid_fc=' ok '
    fi
    printf '\033[1G[%4s] %s\n' "$bpid_fc" "$bench"
  fi
done

if [[ $skipped_all -eq 1 ]]; then
  echo 'warning: you specified to skip all tests'
fi

