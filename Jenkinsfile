pipeline {
    agent any
    
    environment {
        DATE = new Date().format('yy.M')
        MY_IP = sh(script: "curl -4 http://icanhazip.com", returnStdout: true).trim()
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
        
        stage('SSH') {
            steps {
                withCredentials([
                    secret(credentialsId: 'USER_SERVER', variable: 'SSH_USER')
                ]) {
                    sshagent(credentials: ['ansible-ssh']) {
                        sh "ssh -o StrictHostKeyChecking=no vivans@${MY_IP} whoami"
                    }
                }
            }
        }
         
        // Other stages can be added here
    }
}
