FROM ubuntu:latest
 
RUN apt update && apt install -y git python3 python3-pip

RUN python3 -m pip3 install --no-cache-dir PyYAML

COPY feed.py /usr/bin/feed.py 

COPY entrypoint.sh /entrypoint.sh 

RUN  chmod +rx /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
