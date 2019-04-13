#!/bin/bash

# fix awk decimal number parser
export LANG=en_US.UTF-8

rm -rf data/output
mkdir -p data/output
benchmark=blackscholes
for f in data/input/*.data
do
	filename=$(basename "$f")
	extension="${filename##*.}"
	filename="${filename%.*}"


	echo -e "\e[95m------ ${filename} ------\e[0m"

	echo -e "\e[96m*** LibVC Version ***\e[0m"
	time ./bin/${benchmark} ${f} data/output/${filename}_${benchmark}.data

	# echo -e "\e[32m### QoS ###\e[0m"
	#
	# python3 ./../common/scripts/png2rgb.py png data/output/${filename}_${benchmark}.rgb.baseline data/output/${filename}_${benchmark}.baseline.png > out1.tmp
	# python3 ./../common/scripts/png2rgb.py png data/output/${filename}_${benchmark}.rgb.taffo data/output/${filename}_${benchmark}.taffo.png > out2.tmp

	echo -e "\e[32m### QoS ###\e[0m"
	python ./scripts/qos.py data/output/${filename}_${benchmark}_out.data data/output/${filename}_${benchmark}_out.data.fixp
	# compare -metric RMSE data/output/${filename}_${benchmark}.baseline.png data/output/${filename}_${benchmark}.taffo.png /dev/null > tmp.log 2> tmp.err
	awk '{ printf("*** Error: %0.6f%%\n",substr($2, 2, length($2) - 2) * 100) }' tmp.err

done
