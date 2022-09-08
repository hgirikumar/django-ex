FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip
RUN apt-get install -y apache2-dev
RUN pip install Django
COPY * /opt/
CMD ["/opt/wsgi.py"]
ENTRYPOINT ["python"]
