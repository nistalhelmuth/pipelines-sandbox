pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building'
        sh 'ls'
        sh 'docker build -t django-app .'
        sh 'docker run --rm -d --name temp-django-app -p1234:8000 django-app'
        echo 'build ready'
      }
    }
    stage('Testing') {
      steps {
        sh 'docker exec -i temp-django-app python /code/manage.py test'
        sh 'docker stop temp-django-app || true'
        echo 'TESTING'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker stop django-app || true'
        sh 'docker run --rm -d --name django-app -p80:8000 django-app'
        echo 'DEPLOY'
      }
    }
  }
  post {
      always {
        sh 'docker stop temp-django-app || true'
        echo 'POST: ALWAYS'
      }
      success {
        echo 'POST: SUCCESS'
      }
      failure {
        echo 'POST: FAILED'
      }
  }
}
