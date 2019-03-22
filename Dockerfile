FROM zwidny/jdk-oracle:8

RUN groupadd -r spark && useradd -r -m -g spark -s /bin/bash spark

USER spark
WORKDIR /home/spark
RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz
RUN tar -zxvf spark-2.4.0-bin-hadoop2.7.tgz

USER root
COPY cmd.sh /
RUN chmod +x /cmd.sh
CMD ["/cmd.sh"]
