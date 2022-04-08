#!/bin/bash
docker run \
    -v /data/c3sm/server/etc/glusterfs:/etc/glusterfs:z \
    -v /data/c3sm/server/var/lib/glusterd:/var/lib/glusterd:z \
    -v /data/c3sm/server/var/log/glusterfs:/var/log/glusterfs:z \
    -v /data/c3sm/server/data:/data/c3sm/server/data \
    -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
    -d --privileged=true \
    --net=host \
    -v /dev/:/dev \
    --name openc3-c3sm \
    gluster/gluster-centos
