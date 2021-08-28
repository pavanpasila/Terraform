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
     cd Network
     rm -rf london-region-key-pair
     rm -rf london-region-key-pair.pub
     ssh-keygen -f london-region-key-pair -q -N ""
        '''
    }
    }
    stage ('infra provision terraform'){
      steps {
        sh '''
        whoami
        aws --version
        aws configure list
        aws s3 ls
        terraform --version 
        cd Network
        ls -ltr
        terraform init
        terraform plan
        terraform apply
        '''
      }
    }
  
  }
}
