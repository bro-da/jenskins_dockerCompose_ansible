pipeline {
    agent {
        label 'linux'
    }
    
    environment {
        DATE = new Date().format('yy.M')
        MY_IP = sh(script: "curl -4 http://icanhazip.com", returnStdout: true).trim()
    }
    
    options {
        skipStagesAfterUnstable()
        failFast true
    }

    stages {
        stage('Cloning Git') {
            steps {
                git([url: 'https://github.com/bro-da/jenskins_dockerCompose_ansible.git'])
            }
        }
        
       stage('SSH') {
    script {
        sshagent(credentials: ['ansible-ssh']) {
            sh "ssh -o StrictHostKeyChecking=no vivans@${MY_IP} whoami"
        }
    }
}
         
        // Other stages can be added here
    }
}
