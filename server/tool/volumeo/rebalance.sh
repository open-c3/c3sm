#!/bin/bash
ctrl=$1
if [ "X$ctrl" = "X" ];then
    echo "$0 start|stop|status"
    exit
fi
docker exec -it openc3-c3sm gluster volume rebalance c3sm_stripe $ctrl
