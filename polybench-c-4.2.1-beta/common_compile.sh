# NOT TO BE EXECUTED BY ITSELF

D_MINI_DATASET="MINI_DATASET"
D_SMALL_DATASET="SMALL_DATASET"
D_STANDARD_DATASET="MEDIUM_DATASET"
D_LARGE_DATASET="LARGE_DATASET"
D_EXTRALARGE_DATASET="EXTRALARGE_DATASET"
D_M=0
D_DATA_TYPE='DATA_TYPE_IS_FLOAT'
ONLY='*'
FRAC=''
TOT=''
TBLDUMP=0
LISTDUMP=0
D_CONF="CONF_GOOD"

#BOARD="-mcpu=arm7tdmi -mfloat-abi=soft"                                         #LPC
#BOARD="-mcpu=cortex-m0 -mthumb -mfloat-abi=soft"                                #M0
#BOARD="-mcpu=cortex-m3 -mthumb -mfloat-abi=soft"                                #M3
BOARD="-mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16"               #M4

MIOSIX_EABI="/opt/arm-miosix-eabi/arm-miosix-eabi"
MIOSIX_CFLAGS=''

for arg; do
  case $arg in
    64bit)
      D_M=2
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
    --frac=*)
      FRAC="${arg#*=}"
      ;;
    --tot=*)
      TOT="${arg#*=}"
      ;;
    --dump-option-table)
      TBLDUMP=1
      ;;
    --dump-bench-list)
      LISTDUMP=1
      ;;
    --stats-only)
      export COLLECT_STATS_DIR='./stats'
      mkdir -p $COLLECT_STATS_DIR
      ;;
    --miosix-build)
      export MIOSIX_TARGET_OBJ='yes'
      MIOSIX_CFLAGS="-target arm-none-linux-eabi --sysroot=$MIOSIX_EABI -I$MIOSIX_EABI/include/ -I$MIOSIX_EABI/include/c++/4.7.3/ -I$MIOSIX_EABI/include/c++/4.7.3/arm-miosix-eabi/ -D_MIOSIX -D_MIOSIX_GCC_PATCH_VERSION=1 $BOARD -ffunction-sections -Wall -DPOLYBENCH_NO_FLUSH_CACHE"
      ;;
    *)
      echo Unrecognized option $arg
      exit 1
  esac
done


#param: ROOT=where/the/c/files/are
#       $1=bench-name
#       $2=$D_XXX_DATASET
#       $3=fixpfracbitsamt
#       $4=fixpbitsamt
#       $5=fixpfracbitsamt (64 bit)
#       $6=fixpbitsamt (64 bit)
compile() {
  if [[ "$1" == $ONLY ]]; then
    if [ 'x'$5 == 'x' ]; then
      options=( $3 $4 $(($3 * $D_M)) $(($4 * $D_M)) )
    else
      options=( $3 $4 $5 $6 )
    fi
    if [ 'x'$FRAC != 'x' ]; then
      options[0]=$FRAC
      options[2]=$FRAC
    fi
    if [ 'x'$TOT != 'x' ]; then
      options[1]=$TOT
      options[3]=$TOT
    fi
    if [ $TBLDUMP -eq 1 ]; then
      printf '%s & \\texttt{%s} & %s & %s & %s & %s \\\\\n' $1 \
        $(echo -n $2 | sed 's/\_/\\\_/g') \
        ${options[0]} ${options[1]} ${options[2]} ${options[3]}
      return;
    fi;
    if [ $LISTDUMP -eq 1 ]; then
      printf '%s\n' $1
      return;
    fi;
    echo $1
    if [ $D_M -eq 2 ]; then
      touch "build/$1_64";
    else
      rm -f "build/$1_64";
    fi
    ./magiclang.sh "$ROOT/$1/$1.c" "-O3" \
      "-I utilities -I $ROOT/$1 -DPOLYBENCH_TIME -D$2 -D$D_DATA_TYPE  -DPOLYBENCH_STACK_ARRAYS -D$D_CONF $MIOSIX_CFLAGS" \
      "" "$1_out" "-lm utilities/polybench.c" "-fixpfracbitsamt=${options[0 + D_M]} -fixpbitsamt=${options[1 + D_M]}";
  fi
}

