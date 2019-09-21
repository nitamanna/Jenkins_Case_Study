#!/bin/bash

aws ecr describe-repositories --repository-names repo-airflow-jenkins 2>&1 > /dev/null
status=$?
if [[ ! "${status}" -eq 0 ]]; then
    aws ecr create-repository --repository-name repo-airflow-jenkins
fi

aws ecr describe-repositories --repository-names repo-mysql-jenkins 2>&1 > /dev/null
status=$?
if [[ ! "${status}" -eq 0 ]]; then
    aws ecr create-repository --repository-name repo-mysql-jenkins
fi

aws ecr describe-repositories --repository-names repo-webserver-jenkins 2>&1 > /dev/null
status=$?
if [[ ! "${status}" -eq 0 ]]; then
    aws ecr create-repository --repository-name repo-webserver-jenkins
fi
