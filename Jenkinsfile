pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                  docker build -t simple-ci-cd-app .
                '''
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                  docker rm -f simple-ci-cd || true
                  docker run -d --name simple-ci-cd simple-ci-cd-app
                '''
            }
        }
    }
}

