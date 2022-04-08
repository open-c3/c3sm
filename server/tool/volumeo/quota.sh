#!/bin/bash
size=$1
if [ "X$size" = "X" ];then
    echo $0 sizenumber [GB]
    exit
fi
docker exec -it openc3-c3sm gluster volume quota c3sm_stripe enable
docker exec -it openc3-c3sm gluster volume quota c3sm_stripe limit-usage / ${size}GB
