pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git url: 'https://github.com/sai8978-sas/simple-ci-cd.git',
                    branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("rocky-cicd-demo:latest")
                }
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker rm -f rocky-app || true'
                sh 'docker run -d --name rocky-app rocky-cicd-demo:latest'
            }
        }
    }
}

