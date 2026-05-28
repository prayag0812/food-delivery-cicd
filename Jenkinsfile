pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                git 'https://github.com/USERNAME/food-delivery-cicd.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t food-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker rm -f food-container || true'
                sh 'docker run -d -p 8081:80 --name food-container food-app'
            }
        }
    }
}
