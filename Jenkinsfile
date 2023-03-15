pipeline {
    agent any
    environment {
        DATE = new Date().format('yy.M')
        MY_IP = sh(script: "curl -4 http://icanhazip.com", returnStdout: true).trim()

        server_user = credentials('username')
    
    }
    
    options {
        skipStagesAfterUnstable()
        retry(3)
        timeout(time: 1, unit: 'HOURS')
        // failFast is not a valid option type
    }

    stages {
        stage('Cloning Git') {
            steps {
                git([url: 'https://github.com/bro-da/jenskins_dockerCompose_ansible.git'])
            }
        }
        
       stage('SSH') {
            steps {
                
                    sh "ssh -o StrictHostKeyChecking=no ${server_user}@${MY_IP} whoami"
                
            }
        }
         
        // Other stages can be added here
    }
}
