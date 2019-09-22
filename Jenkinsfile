pipeline {
  agent any
    stages {
    	stage('Build docker images') {
    		steps { 
			sh 'chmod -R 777 /modules/'
    			sh './modules/build_images.sh'
    		}
    	}
    	
    	stage('Create Repositories') {
    		steps {
    			sh './modules/create_repo.sh'
    		}
    	}
    	
    	stage('Working with ECR') {
    		steps {
			sh './modules/workng_with_ecr.sh'
    		}
    	}
    	
    	stage('Create Cluster') {
    		steps {
			sh './modules/create_cluster.sh'
    		}
    	}
    	
    	stage('Log Group Creation') {
    		steps {
			sh './modules/create_log_grp.sh'
    		}
    	}
    	
    	stage('Create & Run Task') {
    		steps {
			sh './modules/working_with_task.sh'
    		}
    	}
    }
}
