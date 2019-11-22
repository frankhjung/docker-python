FROM debian:stable-slim
LABEL maintainer=frankhjung
RUN export TERM=xterm \
 && apt-get --yes --list-cleanup update \
 && apt-get --yes install make python3 python3-dev ipython3 python3-ipython python3-ipywidgets python3-nbconvert python3-notebook python3-numpy python3-pandas python3-pip python3-pycodestyle python3-qtconsole python3-scipy \
 && apt-get --yes remove idle idle3 idle3-tools idle-python2.7 idle-python3.7 python-coverage pylint pyflakes python3-coverage python3-nose python3-nosehtmloutput \
 && apt-get --yes clean \
 && apt-get --yes autoclean \
 && apt-get --yes autoremove
WORKDIR /opt/workspace
CMD python3 --version
