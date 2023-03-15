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
        
        stage('SSH') {
            steps {
                withCredentials([
                    string(credentialsId: 'IPADDR', variable: 'ipAddr'),
                    string(credentialsId: 'USER_SERVER', variable: 'userServer')
                ]) {
                    sh "ssh ${userServer}@${ipAddr} echo 1234 > text.txt"
                }
            }
        }
         
        // Other stages can be added here
    }
}
