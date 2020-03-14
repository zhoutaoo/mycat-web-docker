FROM java:8-jre
MAINTAINER <zhoutaoo zhootaoo@foxmail.com>
USER root
RUN wget http://dl.mycat.io/mycat-web-1.0/Mycat-web-1.0-SNAPSHOT-20170102153329-linux.tar.gz
RUN tar -zxvf Mycat-web-1.0-SNAPSHOT-20170102153329-linux.tar.gz -C /
ENV MYCAT_WEB_HOME=/mycat-web
ENV PATH=$PATH:$MYCAT_WEB_HOME
WORKDIR $MYCAT_WEB_HOME
RUN chmod u+x ./start.sh
EXPOSE 8082
CMD ["./start.sh"]
