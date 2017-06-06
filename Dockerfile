FROM cloudwarelabs/xfce4-pulsar:latest
MAINTAINER guodong <gd@tongjo.com>
RUN apt-get update
RUN apt-get install -y git nodejs npm
RUN cd /usr/local/src
RUN git clone git://github.com/c9/core.git c9sdk && cd c9sdk && ./scripts/install-sdk.sh
COPY c9.desktop /root/.config/autostart/
