FROM ubuntu:jammy
RUN apt update && apt upgrade -y
RUN apt install -y gnupg2 wget curl nano python3 snmp iputils-ping
RUN apt install python3-pip
RUN pip3 install pyjipamlib
RUN pip3 install dateutil 
RUN pip3 install pandas 
RUN pip3 install requests


RUN apt-get clean all
WORKDIR /home
