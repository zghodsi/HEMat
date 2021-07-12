FROM debian:testing

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install \
    -y --no-install-recommends --no-install-suggests vim git \ 
    ca-certificates make g++ libgmp-dev libntl-dev


RUN git clone https://github.com/zghodsi/HEMat 
RUN cd HEMat/src && make all && cd ../HEMat && make new && make test
WORKDIR HEMat/HEMat

