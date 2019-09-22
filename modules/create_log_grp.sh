#!bin/bash

# Create Log Grour if not already exists


aws logs describe-log-groups | grep web-log-group 2>&1 > /dev/null
status=$?
if [[ ! "${status}" -eq 0 ]]; then
    aws logs create-log-group --log-group-name /ecs/web-log-group
fi

aws logs describe-log-groups | grep mysql-log-group 2>&1 > /dev/null
status=$?
if [[ ! "${status}" -eq 0 ]]; then
    aws logs create-log-group --log-group-name /ecs/mysql-log-group
fi

aws logs describe-log-groups | grep airflow-log-group 2>&1 > /dev/null
status=$?
if [[ ! "${status}" -eq 0 ]]; then
    aws logs create-log-group --log-group-name /ecs/airflow-log-group
fi

# End of Log group creation
