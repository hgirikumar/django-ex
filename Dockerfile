FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip
COPY * /opt/
CMD ["/opt/django-ex/wsgi.py"]
ENTRYPOINT ["python"]
