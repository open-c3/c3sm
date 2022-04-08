#!/bin/bash
ip=$1
if [ "X$ip" = "X" ];then
    echo "$0 serverip"
    exit;
fi
test -d /c3smx || mkdir /c3smx
mount -t glusterfs $ip:/c3smx /c3smx
