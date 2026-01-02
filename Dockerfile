FROM ubuntu:latest

USER  root
 
RUN apt-get update && apt-get install -y \
    python 3.10 \
    python3-pip \ 
    git

RUN pip3 install PyYaml

COPY feed.py /usr/bin/feed.py 

COPY entrypoint.sh /entrypoint.sh 

ENTRYPOINT ['/entrypoint.sh']
