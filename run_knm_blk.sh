#!/bin/sh

NMK="10 40 70 100 150 200 250 300"
BS="1 5 10 20"
TYPE="nat lib knm kmn mnk mkn nkm nmk blk"
LOGEXT=dat
/bin/rm -f O3nat.$LOGEXT O3lib.$LOGEXT O3knm.$LOGEXT O3kmn.$LOGEXT O3mnk.$LOGEXT O3mkn.$LOGEXT O3nkm.$LOGEXT O3nmk.$LOGEXT


for TTT in $TYPE
do
for values in $NMK
if ["$TTT" = "blk"; then
  for size in $BS
  do
    ./matmult_c.gcc $TTT $values $values $values $size| grep -v CPU >> O3$TTT.$size.$LOGEXT
else
  do
      ./matmult_c.gcc $TTT $values $values $values | grep -v CPU >> O3$TTT.$LOGEXT
  done
fi

echo "Done with type: $TTT"
done

# time to say 'Good bye' ;-)
#
exit 0
