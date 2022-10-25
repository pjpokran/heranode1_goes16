#!/bin/bash

export PATH="/home/poker/miniconda3/envs/goes16_201710/bin/:$PATH"
#sleep 42
cd /home/poker/goes16/meso_grb

#echo $CONDITION

while :; do

  for file in /home/ldm/data/grb-east-mesotemp/07/*RadM1*
  do
#  if [ ! -z "$file" ]
  if [ $file == "/home/ldm/data/grb-east-mesotemp/07/*RadM1*" ]
  then
    echo NO FILES
  else
      echo process $file
      /home/poker/miniconda3/envs/goes16_201710/bin/python goes16_GRB_meso1_swir.py $file
      /bin/rm $file
  fi
  done

echo sleep 5
sleep 5 

done





#/home/poker/miniconda3/envs/goes16_201710/bin/python goes16_GRB_meso1_swir.py /home/ldm/data/grb/meso/07/latest1.nc


