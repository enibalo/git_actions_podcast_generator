FROM ubuntu:latest

USER  root
 
RUN apt-get update && apt-get install -y \
    python3.10 python3-pip git

RUN pip install PyYAML==6.0.1

USER  nobody 

COPY feed.py /usr/bin/feed.py 

COPY entrypoint.sh /entrypoint.sh 

RUN  chmod +rx entrypoint.sh

ENTRYPOINT ['/entrypoint.sh']
