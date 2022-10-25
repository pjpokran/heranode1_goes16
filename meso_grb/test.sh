#!/bin/bash
cd /home/poker/goes16/meso_grb

while :; do

  for file in /home/ldm/data/grb-east-mesotemp/13swi/*RadM2*
  do
#  if [ ! -z "$file" ]
  if [ $file == "/home/ldm/data/grb-east-mesotemp/13/*RadM2*" ]
  then
    echo NO FILES
  else
# OR_ABI-L1b-RadM2-M6C07_G16_s20210610323524_e20210610323593_c20210610324025.nc
#      echo process $file
      echo "file  is" $file
      part1=${file:0:54}
      part2=${file:56:22}
      f2=${part1}1-
      f2+=$part2
      file2=("${f2}"*)
      echo file2 is $file2
      
#      /home/poker/miniconda3/envs/goes16_201710/bin/python goes16_GRB_meso1_ircm.py $file
#      /bin/rm $file
  fi
  done

echo sleep 5
sleep 5

done
