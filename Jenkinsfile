pipeline {
  agent any
  
  environment {
  DOCKER_PASSWORD = credentials('DOCKER_PASSWORD')
  }
  
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
        sh '''docker login -u eongsioco -p $DOCKER_PASSWORD
docker push eongsioco/popcorn:$BUILD_NUMBER'''
      }
    }
  }
}