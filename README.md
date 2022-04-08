# c3sm

## 用途

```
在一些环境中，如果没有可以使用的共享文件系统。可以通过这个工具维护一个高可用的共享文件系统。

open-c3需要对文件进行共享和数据库备份时需要一个高可用的共享文件系统。
```

## 使用方式

### 服务端管理

```
1. 在所有的服务端【提供数据存储的机器】上下载本项目代码到 /data/c3sm
2. 启动服务
    /data/c3sm/server/tool/docker/run.sh

3. 节点组成集群
    /data/c3sm/server/tool/node/add.sh ip
    把所有提供存储的机器添加到集群。

4. 创建卷【普通卷】
   /data/c3sm/server/tool/volume/init.sh nodeip
   先通过其中一台机器创建卷

5. 把机器添加到卷【普通卷】
   /data/c3sm/server/tool/volume/addnode.sh nodeip

6. 如果有多台机器，可以把复制卷创建出来
   /data/c3sm/server/tool/volumex/init.sh nodeip1 nodeip2
   /data/c3sm/server/tool/volumex/addnode.sh nodeip1 nodeip2

   复制卷存两份数据，每次添加两个机器

7. 管理卷
   /data/c3sm/server/tool/{volume,volumex} 使用目录下的工具管理配额和允许访问的ip白名单。
```

### 客户端
```
1. 在需要使用存在的机器上下载本项目代码到/data/c3sm
2. 安装gluster文件系统的支持 /data/c3sm/client/c3sm/install.sh 
3. 挂载普通卷 /data/c3sm/client/c3sm/mount.sh serverip
     挂载点 /c3sm
4. 挂载复制卷 /data/c3sm/client/c3smx/mount.sh serverip
     挂载点 /c3smx

注：挂载卷的serverip是服务的的任何一个服务器的ip
普通卷和复制卷看情况使用，普通卷没有备份，复制卷存了两份数据。
```
