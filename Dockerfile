FROM jupyter/datascience-notebook

USER root

ENV PYTHONUNBUFFERED 1

# Install dependencies
COPY ./requirements.txt /requirements.txt

RUN apt-get update
RUN apt-get install -y --no-install-recommends gcc libc-dev python3-dev libpq-dev curl unzip libnss3 libglib2.0-dev

RUN pip install -r /requirements.txt