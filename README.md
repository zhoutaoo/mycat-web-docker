# mycat-web-docker



## 简介

mycat-web  docker镜像，用于监控mycat

## 环境

* mycat-web部署路径：`/mycat-web`，若要修改mycat-web配置文件，可挂载相关文件到这个目录下
* mycat-web运行时依赖zookeeper，运行前请修改zookeeper的配置


## 打包

```shell
docker build --file Dockerfile --tag zhoutaoo/mycat-web-docker:latest
```

## 使用

```shell
docker run -it -p 8082:8082 zhoutaoo/mycat-web-docker:latest
```
