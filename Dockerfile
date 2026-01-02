FROM ubuntu:latest

USER  root
 
RUN apt-get update && apt-get install -y \
    python3.10 python3-pip git

RUN pip3 install PyYAML

USER  nobody 

COPY feed.py /usr/bin/feed.py 

COPY entrypoint.sh /entrypoint.sh 

RUN  chmod +rx entrypoint.sh

ENTRYPOINT ['/entrypoint.sh']
