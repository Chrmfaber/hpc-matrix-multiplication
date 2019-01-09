#!/bin/sh

CC=${1-"gcc"}

NMK="20 30 40 50 60 70 80 90 100"
LOGEXT=$CC.dat

/bin/rm -f matmult_c.$LOGEXT
for values in $NMK
do
    ./matmult_c.${CC} $values $values $values | grep -v CPU >> matmult_c.$LOGEXT
done

# time to say 'Good bye' ;-)
#
exit 0
