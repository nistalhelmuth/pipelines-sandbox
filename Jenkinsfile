pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building'
        sh 'ls'
        sh 'docker build -t django-app .'
        sh 'docker run --rm -d --name django-app -p80:8000 django-app'
        echo 'build ready'
      }
    }
    stage('Testing') {
      steps {
        sh 'docker exec -it some-django-app python /code/manage.py test'
        echo 'TESTING'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker run --rm -d --name django-app -p443:8000 django-app'
        echo 'DEPLOY'
      }
    }
  }
}
