FROM ubuntu:latest

# PREREQUISITE

RUN apt-get update
RUN apt-get install -y build-essential libcap-dev

COPY isolate /tmp/isolate

RUN cd /tmp/isolate && \
    make install && \
    rm -rf /tmp/isolate