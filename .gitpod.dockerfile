FROM gitpod/workspace-full-vnc:latest

USER root
RUN dpkg --add-architecture i386
RUN rm /var/cache/debconf/* 
RUN apt-get update && apt-get -y install cabextract libxext6 libxext6:i386 libfreetype6 libfreetype6:i386 wine


USER gitpod
