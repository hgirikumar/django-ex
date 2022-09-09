FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip
RUN apt-get install -y apache2-dev
RUN apt-get remove libapache2-mod-python libapache2-mod-wsgi
RUN apt-get install -y libapache2-mod-wsgi-py3
RUN pip install Django
COPY * /opt/
CMD ["/opt/wsgi.py"]
ENTRYPOINT ["python3"]
