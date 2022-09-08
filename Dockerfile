FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip
COPY wsgi.py /opt/
CMD ["/opt/wsgi.py"]
ENTRYPOINT ["python"]
