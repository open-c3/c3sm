#!/bin/bash
ip=$1
if [ "X$ip" = "X" ];then
    echo "$0 serverip"
    exit;
fi
test -d /c3smo || mkdir /c3smo
umount /c3smo
mount -t glusterfs $ip:/c3smo /c3smo
