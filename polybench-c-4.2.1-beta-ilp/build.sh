#!/usr/bin/env bash

SCRIPTPATH=$(dirname "$BASH_SOURCE")
trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM

build_one()
{
  # $1: bench name

  bench="$1"
  pushd "$bench" > /dev/null
  out="${bench}_${costmodel}_${enobweight}_${timeweight}_${castweight}"
  float_out="${bench}_unmodified"
  taffo \
    *.c -I.. -o "$out" $CFLAGS -D$pb_dataset \
    -float-output "$float_out" \
    -mixedmode \
    -costmodel "$costmodel" \
    -instructionsetfile="$TAFFO_PREFIX/share/ILP/constrain/$instrset" \
    -Xdta -mixedtuningenob -Xdta "$enobweight" \
    -Xdta -mixedtuningtime -Xdta "$timeweight" \
    -Xdta -mixedtuningcastingtime -Xdta "$castweight" \
    -Xvra -unroll -Xvra 0 \
    -debug-taffo \
    -temp-dir . \
      &> "$out.log"
  err=$?

  popd > /dev/null
  return $err
}

clean_one()
{
  # $1: bench name
  bench="$1"
  pushd "$bench" > /dev/null
  rm -f *.ll *.log ${bench}_* stats.txt
  popd > /dev/null
}

if [[ -z $(which taffo) ]]; then
  printf 'error: no taffo in the path\n' > /dev/stderr
  exit 1
fi

TAFFO_PREFIX=$(dirname $(which taffo))/..

if [[ -z $costmodel ]];  then export costmodel=core2; fi
if [[ -z $instrset ]];   then export instrset=fix; fi
if [[ -z $enobweight ]]; then export enobweight=1; fi
if [[ -z $timeweight ]]; then export timeweight=1; fi
if [[ -z $castweight ]]; then export castweight=1; fi
if [[ -z $pb_dataset ]]; then export pb_dataset=SMALL_DATASET; fi

printf 'Configuration:\n'
printf '  costmodel  = %s\n' "$costmodel"
printf '  instrset   = %s\n' "$instrset"
printf '  enobweight = %s\n' "$enobweight"
printf '  timeweight = %s\n' "$timeweight"
printf '  castweight = %s\n' "$castweight"
printf '  pb_dataset = %s\n' "$pb_dataset"
printf '  CFLAGS     = %s\n' "$CFLAGS"

action=build
if [[ ( $# -gt 0 ) && ( $1 == clean ) ]]; then
  action=clean
  shift
fi
if [[ $# -eq 0 ]]; then
  benchs=*/
else
  benchs=$@
fi

cd "$SCRIPTPATH/src"
for benchdir in $benchs; do
  bench=${benchdir%/}
  printf '%-8s %-16s' "$action" "$bench"
  case $action in
    build)
      build_one $bench
      ;;
    clean)
      clean_one $bench
      ;;
  esac
  out=$?
  if [[ $out -eq 0 ]]; then
    printf ' OK!\n'
  else
    printf ' fail %d\n' $out 
  fi
done
