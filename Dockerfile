FROM ubuntu:16.04
MAINTAINER kusmirekwiktor@gmail.com

RUN apt-get update && \
 apt-get upgrade -y && \
 apt-get install -y wget python bash

RUN wget https://github.com/ablab/spades/releases/download/v3.11.0/SPAdes-3.11.0-Linux.tar.gz && tar -xf SPAdes-3.11.0-Linux.tar.gz

ENV PATH="/SPAdes-3.11.0-Linux/bin/:${PATH}"
