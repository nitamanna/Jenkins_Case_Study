aws ecs list-clusters | grep airflow-fargate-cluster-jenkins 2>&1 > /dev/null
status=$?
if [[ ! "${status}" -eq 0 ]]; then
    aws ecs create-cluster --cluster-name airflow-fargate-cluster-jenkins
fi
