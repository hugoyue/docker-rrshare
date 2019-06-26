# docker-rrshare

[![Docker Pulls](https://img.shields.io/docker/pulls/gowah/rrshare64.svg)](https://hub.docker.com/r/gowah/rrshare64)

[**喵斯基部落**](https://www.moewah.com/)，**为你的乐趣专属定制，不定时更新好玩/好看/好用。**

支持群晖

## docker run

```bash
docker run --name rrshare \
  -d -p3001:3001 \
  -v ~/Downloads/rrshare:/opt/work/store:rw \
  gowah/rrshare64:latest
```

## web界面

默认锁屏密码：123456，可以在设置中修改。

![演示图片](./imgs/01.jpg)

## 异常处理

rrshare客户端做的好不太完善，最简单的删除重建

```bash
docker rm -f rrshare
```

## 愉快滴玩耍吧
