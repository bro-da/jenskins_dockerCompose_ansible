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
    withCredentials([
        string(credentialsId: 'IPADDR', variable: 'secret1'),
        string(credentialsId: 'USER_SERVER', variable: 'secret2')
    ]) {
        sh '''
            echo "Secret 1 value: $secret1 >> text.txt"
            
            echo "Secret 2 value: $secret2 >> text.txt"
        '''
    }
}
 
//        stages ('Example') {
//     withCredentials([
//         string(credentialsId: 'IPADDR', variable: 'secret1'),
//         string(credentialsId: 'USER_SERVER', variable: 'secret2')
//     ]) {
//         sh '''
//             echo "Secret 1 value: $secret1 >> text.txt"
            
//             echo "Secret 2 value: $secret2 >> text.txt"
//         '''
//     }
// }
         
	}

	
        
    }
    