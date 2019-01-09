#!/bin/sh

NMK="10 40 70 100 150 200 250 300"
TYPE="nat lib knm kmn mnk mkn nkm nmk"
LOGEXT=dat
/bin/rm -f O3nat.$LOGEXT O3lib.$LOGEXT O3knm.$LOGEXT O3kmn.$LOGEXT O3mnk.$LOGEXT O3mkn.$LOGEXT O3nkm.$LOGEXT O3nmk.$LOGEXT

for TTT in $TYPE
echo "Calculating with type: $TTT"
do
for values in $NMK
do
    ./matmult_c.gcc $TTT $values $values $values | grep -v CPU >> O3$TTT.$LOGEXT
done
echo "Done with type: $TTT"
done

# time to say 'Good bye' ;-)
#
exit 0
