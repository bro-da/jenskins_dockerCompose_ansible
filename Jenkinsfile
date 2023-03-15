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
    //  stage('SSH') {
    //         steps {
    //             sshagent (credentials: ['ansible-ssh']) {
    //                 sh 'ssh vivans@20.235.240.117 "echo hell > text.txt"'
    //             }
    //         }
    //     }
        stage('run the playbook') {
            steps {
                // sh 'ansible-playbook docker-compose-playbook.yaml'
                sh 'ssh vivans@20.235.240.117 "echo hell > text.txt"'
            }
        }
         
	}

	
        
    }
    