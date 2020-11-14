pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building'
        sh 'ls'
        sh 'docker build -t my-django-app .'
        sh 'docker run --rm -d --name some-django-app -p80:8000 my-django-app'
        echo 'build ready'
      }
    }
    stage('Testing') {
      steps {
        echo 'TESTING'
      }
    }
    stage('Deploy') {
      steps {
        echo 'DEPLOY'
      }
    }


  }
}
