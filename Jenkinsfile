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
             sh 'ssh  -o StrictHostKeyChecking=no  vivans@20.235.240.117 whoami '
        }
    }
}


         
        // Other stages can be added here
    }
}
