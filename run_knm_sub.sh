#!/bin/bash
#BSUB -q hpcintro
#BSUB -W 2
#BSUB -R "select[model == XeonGold6126]"
#BSUB -n 1 -R "span[hosts=1]"
#BSUB -B -N

NMK="10 100"
TYPE="nat lib knm kmn mnk mkn nkm nmk"
LOGEXT=dat
/bin/rm -f O3nat.$LOGEXT O3lib.$LOGEXT O3knm.$LOGEXT O3kmn.$LOGEXT O3mnk.$LOGEXT O3mkn.$LOGEXT O3nkm.$LOGEXT O3nmk.$LOGEXT


for TTT in $TYPE
do
for values in $NMK
do
    ./matmult_c.gcc $TTT $values $values $values | grep -v CPU >> Data/O3$TTT.$LOGEXT
done
echo "Done with type: $TTT"
done

# time to say 'Good bye' ;-)
#
exit 0
