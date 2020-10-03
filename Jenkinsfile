pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building'
        sh 'ls'
        sh 'docker build -t my-django-app .'
        sh 'docker run --name some-django-app -p 80:8080 -d my-django-app'
        echo 'build ready'
      }
    }

    stage('Test') {
      steps {
        echo 'Test'
        input(message: 'hola Alvhi', ok: 'contiunar?')
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying'
      }
    }

  }
}
