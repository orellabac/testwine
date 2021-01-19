FROM gitpod/workspace-full-vnc:latest

USER root
RUN dpkg --add-architecture i386
RUN rm /var/cache/debconf/* 
RUN apt-get update 
RUN apt-get -y install cabextract libxext6 
RUN apt-get -y install --reinstall libxext6:i386 
RUN apt-get -y install libfreetype6 libfreetype6:i386 wine


USER gitpod
