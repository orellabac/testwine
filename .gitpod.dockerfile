FROM gitpod/workspace-full-vnc:latest

USER root
RUN dpkg --add-architecture i386
# RUN rm /var/cache/debconf/* 
RUN apt-get update 
RUN apt-get -y install cabextract libxext6 
RUN apt-get -y install --reinstall libxext6:i386 
RUN apt-get -y install libfreetype6 libfreetype6:i386
RUN wget -qO- https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
RUN apt install software-properties-common
RUN apt-add-repository 'deb http://dl.winehq.org/wine-builds/ubuntu/ bionic main'
RUN wget -qO- https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/Release.key | sudo apt-key add -
RUN sh -c 'echo "deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./" > /etc/apt/sources.list.d/obs.list'
RUN apt update
RUN apt-get install -y --install-recommends winehq-stable
USER gitpod

