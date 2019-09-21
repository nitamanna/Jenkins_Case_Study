#!/bin/bash

# Login into ECR repository 

sudo $(aws ecr get-login --no-include-email --region us-east-1)

# Tagging Docker images for Pull

sudo docker tag airflow:latest 547369373092.dkr.ecr.us-east-1.amazonaws.com/repo-airflow-jenkins:latest
sudo docker tag mysql:latest 547369373092.dkr.ecr.us-east-1.amazonaws.com/repo-mysql-jenkins:latest
sudo docker tag webserver:latest 547369373092.dkr.ecr.us-east-1.amazonaws.com/repo-webserver-jenkins:latest

# Pulling docker images

sudo docker push 547369373092.dkr.ecr.us-east-1.amazonaws.com/repo-airflow-jenkins:latest
sudo docker push 547369373092.dkr.ecr.us-east-1.amazonaws.com/repo-mysql-jenkins:latest
sudo docker push 547369373092.dkr.ecr.us-east-1.amazonaws.com/repo-webserver-jenkins:latest
