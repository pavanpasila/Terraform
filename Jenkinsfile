pipeline {
  agent any
  
  stages {
    stage ('scm stage') {
      steps {
       git branch: 'main', credentialsId: 'pavan_github', url: 'https://github.com/pavanpasila/Terraform.git'
      }
      }
    stage ('generate keypair'){
     sh 'ssh-keygen -f london-region-key-pair'
    }
    stage ('infra provision terraform'){
      steps {
        sh '''
        terraform --version 
        cd Network
        ls -ltr
        terraform init
        '''
      }
    }
  
  }
}
