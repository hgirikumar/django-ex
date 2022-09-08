FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip && apt-get install apache2-dev
RUN apt-get install libapache2-mod-wsgi-py3
RUN pip install Django
COPY * /opt/
CMD ["/opt/wsgi.py"]
ENTRYPOINT ["python"]
