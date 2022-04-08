#!/bin/bash
ip=$1
if [ "X$ip" = "X" ];then
    echo $0 10.10.1.2,10.10.2.*
    exit
fi
docker exec -it openc3-c3sm gluster volume set c3smo auth.allow $ip
