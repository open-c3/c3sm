#!/bin/bash

#设置cache 大小（根据实际情况，如果设置太大可能导致后面客户端挂载失败）
docker exec -it openc3-c3sm gluster volume set c3sm_replica performance.cache-size 512MB

# 开启 异步后台操作
docker exec -it openc3-c3sm gluster volume set c3sm_replica performance.flush-behind on

#设置io线程 32
docker exec -it openc3-c3sm gluster volume set c3sm_replica performance.io-thread-count 32

#设置 回写(写数据时间，先写入缓存中，在写入磁盘)
docker exec -it openc3-c3sm gluster volume set c3sm_replica performance.write-behind on

