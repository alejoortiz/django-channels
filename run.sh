#!/bin/bash

# stop containers
docker-compose down & wait $!
# start containers
docker-compose up -d --build & wait $!
# check images
docker images & wait $!
# check containers
docker ps -a & wait $!
# perform migration in django
docker exec -it django python manage.py migrate
# run django
docker exec -it django python manage.py runserver 0.0.0.0:8000