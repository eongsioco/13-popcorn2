pipeline {
  agent any
  stages {
    stage('greeting') {
      steps {
        sh 'echo "hello"'
      }
    }
    stage('build docker') {
      steps {
        sh 'docker build -t popcorn:BUILD_NUMBER .'
      }
    }
  }
}