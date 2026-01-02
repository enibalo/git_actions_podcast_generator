FROM python:3
 
RUN apt update && apt install -y git

RUN pip install --no-cache-dir PyYAML

COPY feed.py /usr/bin/feed.py 

COPY entrypoint.sh /entrypoint.sh 

RUN  chmod +rx /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
