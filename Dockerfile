FROM centos:centos7

MAINTAINER gowah<admin@mao.sh>
LABEL description="人人影视WEB下载工具"

ENV HOST 0.0.0.0

RUN yum -y install wget curl screen make && \
cd /opt && \
wget --no-check-certificate https://api.mao.sh/source/rrshareweb_centos7.tar.gz && \
tar zxvf *.tar.gz && rm -rf *.tar.gz && \
chmod a+x  /opt/rrshareweb && \
sed -i "s#f:\/store#\/opt\/work\/store#" rrshareweb/conf/rrshare.json && \
mkdir -p /opt/work/store && chmod 755 -R /opt

EXPOSE 3001 6714 30210
ENTRYPOINT ["/opt/rrshareweb/rrshareweb"]
