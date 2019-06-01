#!/bin/bash

trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM SIGKILL

SCRIPTPATH=$(dirname "$BASH_SOURCE")
cd "$SCRIPTPATH"

TIMEOUT='timeout'
if [[ -z $(which $TIMEOUT) ]]; then
  TIMEOUT='gtimeout'
fi
if [[ ! ( -z $(which $TIMEOUT) ) ]]; then
  TIMEOUT="$TIMEOUT 10"
else
  printf 'warning: timeout command not found\n'
  TIMEOUT=''
fi

TASKSET=""
which taskset > /dev/null
if [ $? -eq 0 ]; then
        TASKSET="taskset -c 0 "
fi

STACKSIZE='unlimited'
if [ $(uname -s) = "Darwin" ]; then
  STACKSIZE='65532';
fi
ulimit -s $STACKSIZE


run_one()
{
  benchpath=$1
  datadir=$2
  benchdir=$(dirname $benchpath)
  benchname=$(basename $benchdir)
  fix_out=build/"$benchname".out
  flt_out=build/"$benchname".float.out
  
  $TASKSET $flt_out 2> $datadir/$benchname.float.csv > $datadir/$benchname.float.time.txt || return $?
  $TASKSET $fix_out 2> $datadir/$benchname.csv > $datadir/$benchname.time.txt || return $?
}


ONLY='.*'

for arg; do
  case $arg in
    --only=*)
      ONLY="${arg#*=}"
      ;;
    *)
      echo Unrecognized option $arg
      exit 1
  esac
done

mkdir -p results-out

all_benchs=$(cat ./utilities/benchmark_list)
skipped_all=1
for bench in $all_benchs; do
  if [[ "$bench" =~ $ONLY ]]; then
    skipped_all=0
    printf '[....] %s' "$bench"
    run_one "$bench" ./results-out
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
