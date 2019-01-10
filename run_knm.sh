#!/bin/sh
#BSUB -q hpcintro
#BSUB -W 15
#BSUB -R "select[model == XeonGold6126]"
#BSUB -n 1 -R "span[host=1]"
#BSUB -B -N

<<<<<<< HEAD
NMK="10 20 30 40 50 100 200 300 400 500 1000 2000 3000 4000 5000 10000"
=======
NMK="10 40 70 100 150 200 250 300"

>>>>>>> 6d3974a298df7adac83257698eb5bb801d6bdb5d
TYPE="nat lib knm kmn mnk mkn nkm nmk"
LOGEXT=dat
/bin/rm -f TestO3nat.$LOGEXT

for TTT in $TYPE
do
for values in $NMK
do
    ./matmult_c.gcc $TTT $values $values $values | grep -v CPU >> TestO3$TTT.$LOGEXT
echo "Done with NMK: $values"
done
echo "Done with type: $TTT"
done

# time to say 'Good bye' ;-)
#
exit 0
