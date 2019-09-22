
# Creating Task Ddefinition

aws ecs register-task-definition --cli-input-json file://task-version2.json

# Running the Task 
aws ecs run-task --cluster airflow-fargate-cluster-jenkins --task-definition my-fargate-task-jenkins --network-configuration 'awsvpcConfiguration={subnets=[subnet-cde69af3,subnet-c82109af],securityGroups=[sg-00b7fe28bc41c3a93],assignPublicIp=ENABLED}' --launch-type 'FARGATE'
