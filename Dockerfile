FROM debian:stable-slim
LABEL maintainer=frankhjung
LABEL version="3.11.2"
LABEL description="Python 3 with: make"
LABEL git="https://github.com/frankhjung/docker-python"
RUN export TERM=xterm \
 && apt-get --yes --list-cleanup update \
 && apt-get --yes install make python3 python3-dev python3-nbconvert python3-notebook python3-numpy python3-pandas python3-pip python3-pycodestyle python3-scipy \
 && apt-get --yes purge idle* idle3-tools idle-python* \
 && apt-get --yes clean \
 && apt-get --yes autoclean \
 && apt-get --yes autoremove
WORKDIR /opt/workspace
CMD python3 --version
