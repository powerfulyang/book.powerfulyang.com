<!-- toc -->
## Docker install steps (CentOS 8)

###  install docker-ce's repo
```
$ curl https://download.docker.com/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo
```

### install dependencies
```
$ yum install https://download.docker.com/linux/fedora/30/x86_64/stable/Packages/containerd.io-1.2.6-3.3.fc30.x86_64.rpm
```

### install docker-ce
```
$ yum install docker-ce
```

### start docker
```
$ systemctl start docker
```

### install docker-compose
```
$ curl -L https://github.com/docker/compose/releases/download/1.25.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
$ chmod +x /usr/local/bin/docker-compose
```


## Docker common shell
### rm none tag images
```
// stop exited containers
$ docker stop $(docker ps -a | grep "Exited" | awk '{print $1 }')   //停止容器
// rm exited containers
$ docker rm $(docker ps -a | grep "Exited" | awk '{print $1 }')    //删除容器
// rm <none> images
$ docker rmi $(docker images | grep "none" | awk '{print $3}')    //删除镜像   
```
