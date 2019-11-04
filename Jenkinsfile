pipeline {
  agent any
  stages {
    stage('test') {
      parallel {
        stage('test') {
          steps {
            sh 'echo hello'
          }
        }

        stage('') {
          steps {
            sh 'echo world'
          }
        }

      }
    }

    stage('') {
      steps {
        sh 'echo done'
      }
    }

  }
}