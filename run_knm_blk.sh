#!/bin/sh
EXPNAME="mkn_order_blocking"
#BSUB -J "$EXPNAME"
#BSUB -q hpcintro
#BSUB -W 360
#BSUB -R "select[model == XeonGold6126]"
#BSUB -n 1 -R "span[hosts=1]"
#BSUB -B -N

NMK="10 50 100 200 400 600 800 1000 1200 1400 1600 1800 2000 2500 3000 3500 4000"
#NMK="10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180 190 200 210 220 230 240 250 260 270 280 290 300 310 320 330 340 350 360 370 380 390 400 410 420 430 440 450 460 470 480 490 500 510 520 530 540 550 560 570 580 590 600 610 620 630 640 650 660 670 680 690 700 710 720 730 740 750 760 770 780 790 800 810 820 830 840 850 860 870 880 890 900 910 920 930 940 950 960 970 980 990 1000"
BS="2 4 8 12 16 24 32 64 128 192 256 400 512 700 850 1024 1200 1500 2048 2500 3000"
TYPE="blk"
LOGEXT=dat



module load gcc

for TTT in $TYPE
do
for values in $NMK
do
if [[ "$TTT" = "blk" ]]
  then
  for size in $BS
  do
  echo "Testing for BLK with knm = $values and bs = $size now."
    MATMULT_COMPARE=0 ./matmult_c.gcc $TTT $values $values $values $size| grep -v CPU >> Data/$EXPNAME$TTT.$LOGEXT
  done
else
  echo "Testing for $TTT wiht knm = $values now."
   MATMULT_COMPARE=0 ./matmult_c.gcc $TTT $values $values $values | grep -v CPU >> Data/$EXPNAME$TTT.$LOGEXT
fi
done

echo "Done with type: $TTT"
done
echo "Done with all."
exit 0
