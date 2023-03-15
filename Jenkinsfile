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
        sshagent(credentials: ['ansible-ssh']) {
            ssh remote: 'vivans@20.235.240.117', command: 'echo 1234 > text.txt'
        }
    }
}

         
        // Other stages can be added here
    }
}
