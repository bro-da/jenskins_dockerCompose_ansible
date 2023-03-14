pipeline {
    agent any
    
     environment {
        DATE = new Date().format('yy.M')
    }
    options {
        skipStagesAfterUnstable()
    }

    stages {
         stage('Cloning Git') {
      steps {
        git([url: 'https://github.com/bro-da/jenskins_dockerCompose_ansible.git'])
 
      }
    }
        stage('run the playbook') {
            steps {
                sh 'ansible-playbook docker-compose-playbook.yaml'
            }
        }
         
	}

	post {
		always {
			sh 'docker ps'
		}
	}
        
    }
    