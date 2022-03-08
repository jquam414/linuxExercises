#!/bin/bash

#replace head -n 5 Property_Tax_Roll.csv  with cat Property_Tax_Roll.csv
cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d , -f 7 | { sum=0; n=0; while read val; do sum=$(($sum + $val)); n=$(($n +1)); done; echo $sum/$n; } | bc -l
