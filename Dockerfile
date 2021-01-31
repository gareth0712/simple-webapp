FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python python-pip

COPY requirements.txt /op/
RUN pip install -r /opt/requirements.txt

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080