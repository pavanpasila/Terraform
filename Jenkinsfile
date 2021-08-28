pipeline {
  agent any
  
  stages {
    stage ('scm stage') {
      steps {
       git credentialsId: 'pavan_github', url: 'https://github.com/pavanpasila/Terraform.git'
      }
    }
  
  }
}
