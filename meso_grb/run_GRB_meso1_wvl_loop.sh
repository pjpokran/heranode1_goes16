#!/bin/bash

export PATH="/home/poker/miniconda3/envs/goes16_201710/bin/:$PATH"

#sleep 52

#echo $time

cd /home/poker/goes16/meso_grb

while :; do

  for file in /home/ldm/data/grb-east-mesotemp/10/*RadM1*
  do
#  if [ ! -z "$file" ]
  if [ $file == "/home/ldm/data/grb-east-mesotemp/10/*RadM1*" ]
  then
    echo NO FILES
  else
      echo process $file
      /home/poker/miniconda3/envs/goes16_201710/bin/python goes16_GRB_meso1_wvl.py $file
      /bin/rm $file
  fi
  done

echo sleep 5
sleep 5

done

#cp /home/ldm/data/grb/meso/10/latest1.nc /dev/shm/latest_meso1_10.nc
#cmp /home/ldm/data/grb/meso/10/latest1.nc /dev/shm/latest_meso1_10.nc > /dev/null
#CONDITION=$?
#echo $CONDITION
#
#while :; do
#
#  until [ $CONDITION -eq 1 ] ; do
##     echo same
#     sleep 5
#     cmp /home/ldm/data/grb/meso/10/latest1.nc /dev/shm/latest_meso1_10.nc > /dev/null
#     CONDITION=$?
#  done
#
##  echo different
#  cp /home/ldm/data/grb/meso/10/latest1.nc /dev/shm/latest_meso1_10.nc
#  /home/poker/miniconda3/envs/goes16_201710/bin/python goes16_GRB_meso1_wvl.py /dev/shm/latest_meso1_10.nc
#  cmp /home/ldm/data/grb/meso/10/latest1.nc /dev/shm/latest_meso1_10.nc > /dev/null
#  CONDITION=$?
##  echo repeat
#
#done
#
#
#/home/poker/miniconda3/envs/goes16_201710/bin/python goes16_GRB_meso1_wvl.py /home/ldm/data/grb/meso/10/latest1.nc


