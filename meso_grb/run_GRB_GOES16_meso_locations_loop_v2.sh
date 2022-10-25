#!/bin/bash

export PATH="/home/poker/miniconda3/envs/goes17_201811/bin/:$PATH"
cd /home/poker/goes16/meso_grb

while :; do

  for file in /home/ldm/data/grb-east-mesotemp/13globe/*RadM2*
  do
#  if [ ! -z "$file" ]
  if [ $file == "/home/ldm/data/grb-east-mesotemp/13globe/*RadM2*" ]
  then
    echo NO FILES
  else
# OR_ABI-L1b-RadM2-M6C07_G16_s20210610323524_e20210610323593_c20210610324025.nc
#      echo process $file
      echo "file  is" $file
      part1=${file:0:56}
      part2=${file:58:22}
      f2=${part1}1-
      f2+=$part2
      file2=("${f2}"*)
      echo file2 is $file2
#      /home/poker/miniconda3/envs/goes16_201710/bin/python goes16_GRB_meso_swisc_ircm.py $file2 $file
       /home/poker/miniconda3/envs/goes17_201811/bin/python goes16-GRB_meso_locations_ircm_orig_proj.py $file2 $file
      /bin/rm $file2 $file

#      /home/poker/miniconda3/envs/goes16_201710/bin/python goes16_GRB_meso1_ircm.py $file
#      /bin/rm $file
  fi
  done


#while :; do
#
##  echo different
#  /home/poker/miniconda3/envs/goes17_201811/bin/python goes16-GRB_meso_locations_ircm_orig_proj.py /dev/shm/latest_meso1_13.nc /dev/shm/latest_meso2_13.nc
#  sleep 300
#
#done
#




# /home/poker/miniconda3/envs/goes16_201710/bin/python goes17_GRB_meso1_ircm.py /home/ldm/data/grb-west/meso/13/latest1.nc


