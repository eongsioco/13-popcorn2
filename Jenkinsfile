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
        sh 'docker build -t popcorn:$BUILD_NUMBER .'
      }
    }
    stage('DOCKER') {
      steps {
        sh '''docker login -u chyld -p $DOCKER_PASSWORD
docker push eongsioco/popcorn:$BUILD_NUMBER'''
      }
    }
  }
}