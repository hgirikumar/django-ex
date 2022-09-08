FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip
COPY * /opt/
CMD ["/opt/wsgi.py"]
ENTRYPOINT ["python"]
