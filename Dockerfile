FROM arm32v7/debian:buster

# This is to allow 'pip install picamera' to install properly
# https://stackoverflow.com/questions/64280809/error-accessing-picamera-in-docker-container-running-on-raspberry-pi
ENV READTHEDOCS=True

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y python-pip

RUN pip install picamera
RUN pip install --upgrade google-api-python-client
RUN pip install --upgrade pip

# Below is to install prequisites for Pillow
# https://github.com/Automattic/node-canvas/issues/524
RUN apt-get install -y libcairo2-dev \
                       libjpeg-dev \
                       libpango1.0-dev \
                       libgif-dev \
                       libpng-dev \
                       build-essential

RUN pip install --upgrade Pillow
RUN pip install google-cloud
RUN pip install google-cloud-vision

WORKDIR /home/pi/facial_recog_pi/src
