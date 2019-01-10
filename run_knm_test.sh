#!/bin/sh
#BSUB -q hpcintro
#BSUB -W 15
#BSUB -R "select[model == XeonGold6126]"
#BSUB -n 1 -R "span[hosts=1]"
#BSUB -B -N

NMK="10 100"
TYPE="nat"
LOGEXT=dat
/bin/rm -f TestO3nat.$LOGEXT

for TTT in $TYPE
do
for values in $NMK
do
    MATMULT_COMPARE=0 ./matmult_c.gcc $TTT $values $values $values | grep -v CPU >> Data/TestO3$TTT.$LOGEXT
done
echo "Done with type: $TTT"
done

# time to say 'Good bye' ;-)
#
exit 0
