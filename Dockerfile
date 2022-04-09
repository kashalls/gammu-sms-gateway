FROM debian:buster-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV CONFIG="/app/smsgateway.yml"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -qq libgammu-dev gammu python3 python3-pip

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN gammu-config

RUN pip3 install -r requirements.txt
ENTRYPOINT python3 /app/smsgateway.py