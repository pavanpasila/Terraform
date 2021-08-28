pipeline {
  agent any
  
  stages {
    stage ('scm stage') {
      steps {
       git branch: 'main', credentialsId: 'pavan_github', url: 'https://github.com/pavanpasila/Terraform.git'
      }
      }
    stage ('infra provision terraform'){
      steps {
        sh 'terraform --version'  
      }
    }
  
  }
}
