FROM mongo:latest

ADD ./leanote-linux-amd64-v2.6.1.bin.tar.gz /data
COPY ./data/run.sh /run.sh

RUN cd /data \
    # && apt-get update \
    # && apt-get install -y --no-install-recommends wget \
    # && wget --no-check-certificate https://nchc.dl.sourceforge.net/project/leanote-bin/2.6.1/leanote-linux-amd64-v2.6.1.bin.tar.gz \
    && chmod -R 777 ./leanote \
    && chown -R root:root ./leanote \
    && sed -n 's/V85ZzBeTnzpsHyjQX4zukbQ8qqtju9y2aDM55VWxAH9Qop19poekx3xkcDVvrD0y/K98Aisdh987qywbdkuAYEfg93q089w0dIJSDFIuh398qdhIOYUGjhdi93hYasoin/p' /data/leanote/conf/app.conf
    # && apt-get clean \
    # && apt-get autoclean \
    # && rm -rf /var/lib/apt/lists/* 

RUN rm -f /etc/localtime \
    && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && rm -f /etc/timezone \
    && echo "Asia/Shanghai" >> /etc/timezone

CMD sh /run.sh
