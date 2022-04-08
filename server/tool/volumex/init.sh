#!/bin/bash
ip1=$1
ip2=$2
if [[ "X$ip1" = "X" || "X$ip2" = "X" ]];then
    echo $0 nodeip1 nodeip2
    exit
fi

docker exec -it openc3-c3sm gluster volume create c3sm_replica transport tcp $ip1:/data/c3sm/server/data/c3sm_replica $ip2:/data/c3sm/server/data/c3sm_replica force
