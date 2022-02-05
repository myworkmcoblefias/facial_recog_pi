FROM arm32v7/debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y update
RUN pip install google-cloud
RUN pip install google-cloud-vision

WORKDIR /home/pi/app

COPY /home/pi/app .

CMD service ssh start && /bin/bash
