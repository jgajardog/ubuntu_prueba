#!/bin/bash

tagname=ubuntu_prueba
sudo docker stop prueba
sudo docker rm prueba
sudo docker build --no-cache -t jgajardog/$tagname:0.0.1 .
sudo docker run --rm --name prueba -h prueba jgajardog/$tagname:0.0.1
sudo docker push jgajardog/$tagname:0.0.1
