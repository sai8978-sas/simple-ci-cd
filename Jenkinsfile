pipeline {
    agent any

    environment {
        IMAGE_NAME = "simple-ci-cd-app"
        CONTAINER_NAME = "simple-ci-cd"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t $IMAGE_NAME:latest .
                '''
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                docker stop $CONTAINER_NAME || true
                docker rm $CONTAINER_NAME || true

                docker run -d \
                  --name $CONTAINER_NAME \
                  $IMAGE_NAME:latest
                '''
            }
        }
    }
}

