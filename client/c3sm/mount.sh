#!/bin/bash
ip=$1
if [ "X$ip" = "X" ];then
    echo "$0 serverip"
    exit;
fi
test -d /c3sm || mkdir /c3sm
umount /c3sm
mount -t glusterfs $ip:/c3sm /c3sm
