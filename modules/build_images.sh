#!/bin/bash

cd etl-pipeline
pwd
sudo docker build . -t airflow:latest
cd ../webserver
pwd
sudo docker build . -t webserver:latest
cd ../dbserver
pwd
sudo docker build . -t mysql:latest
