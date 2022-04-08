#!/bin/bash
ip=$1
if [ "X$ip" = "X" ];then
    echo $0 nodeip
    exit
fi
docker exec -it openc3-c3sm gluster volume create c3sm_distributed transport tcp $ip:/data/c3sm/server/data/c3sm_distributed force
