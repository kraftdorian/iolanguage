FROM debian:jessie-slim

WORKDIR /io-lang

# Install dependencies
RUN apt update &&\
    apt install -y build-essential cmake git libyajl-dev libevent-dev libpcre3-dev

# Build Io
RUN git clone --recursive --depth 1 --branch 2015.11.11 https://github.com/IoLanguage/io.git &&\
    cd io &&\
    mkdir build &&\
    cd build &&\
    cmake -Wno-dev .. &&\
    make &&\
    make install &&\
    rm -r ./../../io
