pipeline {
  agent any
  
  stages {
    stage ('scm stage') {
      steps {
       git branch: 'main', credentialsId: 'pavan_github', url: 'https://github.com/pavanpasila/Terraform.git'
      }
      }
    stage ('generate keypair'){
      steps {
     sh '''
     rm -rf london-region-key-pair
     rm -rf london-region-key-pair.pub
     ssh-keygen -f london-region-key-pair
        '''
    }
    }
    stage ('infra provision terraform'){
      steps {
        sh '''
        aws --version
        aws s3 ls
        aws configure list
        terraform --version 
        cd Network
        ls -ltr
        terraform init
        terraform plan
        '''
      }
    }
  
  }
}
