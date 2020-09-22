pipeline {
  agent any
  stages {
    stage('Build') {
      steps{
        echo 'Building'
        echo 'ls'
        sh 'docker-compose up'
        echo 'build ready'
      }
    }
    stage('Test') {
      steps{
        echo 'Test'
      }
    }
    stage('Deploy') {
      steps{
        echo 'Deploying'
      }
    }
  }
}
