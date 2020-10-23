#!/bin/bash

# build containers and run
docker-compose up -d --build
# create django project
docker-compose run web django-admin startproject mysite .
# create app chat in django
docker-compose run web python3 manage.py startapp chat
# perform migration in django
docker-compose run web python3 manage.py migrate
# check images
docker images
# check containers
docker ps -a