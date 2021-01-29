FROM ubuntu:20.04

ARG user=ubuntu


USER root

RUN apt-get update \
    && apt-get -y install \
    build-essential \
    git \
    gcc \
    make \
    cmake \
    cmake-gui \
    cmake-curses-gui \
    libssl-dev

RUN git clone https://github.com/eclipse/paho.mqtt.c.git && \
    cd org.eclipse.paho.mqtt.c.git && \
    make && \
    make install

USER ${user}
