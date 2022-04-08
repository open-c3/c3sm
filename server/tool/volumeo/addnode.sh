#!/bin/bash
ip1=$1
ip2=$2
ip3=$3
ip4=$4
if [[ "X$ip1" = "X" || "X$ip2" = "X" || "X$ip4" = "X" ||"X$ip4" = "X" ]];then
    echo $0 nodeip1 nodeip2 nodeip3 nodeip4
    exit
fi
docker exec -it openc3-c3sm gluster volume add-brick c3smo \
    $ip1:/data/c3smo \
    $ip2:/data/c3smo \
    $ip3:/data/c3smo \
    $ip4:/data/c3smo
