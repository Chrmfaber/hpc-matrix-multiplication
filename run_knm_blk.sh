#!/bin/sh

NMK="10 40 70 100 150 200 250 300"
BS="1 5 10 20"
TYPE="nat lib knm kmn mnk mkn nkm nmk blk"
LOGEXT=dat
/bin/rm -f *.wisse

for TTT in $TYPE
do
for values in $NMK
do
if [[ "$TTT" = "blk" ]]
  then
  for size in $BS
  do
   echo "Testing for BLK with knm = $values and bs = $size now."
    ./matmult_c.gcc $TTT $values $values $values $size| grep -v CPU >> O3$TTT.$LOGEXT.wisse
  done
else
  echo "Testing for $TTT wiht knm = $values now."
    ./matmult_c.gcc $TTT $values $values $values | grep -v CPU >> O3$TTT.$LOGEXT.wisse
fi
done

echo "Done with type: $TTT"
done
echo "Done with all."
exit 0
