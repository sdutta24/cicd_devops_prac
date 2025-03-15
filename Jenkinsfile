pipeline {
    agent {
        docker {
            image 'python:3.9' // Using Python 3.9 Docker image as the build environment
        }
    }
    environment {
        APP_NAME = "cicd_devops_prac"
    }
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/sdutta24/cicd_devops_prac.git' // Change this to your repo
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Run Tests') {
            steps {
                sh 'pytest tests/' // Assuming you have tests in a "tests" folder
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${APP_NAME}:latest .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm ${APP_NAME}:latest'
            }
        }
        stage('Cleanup') {
            steps {
                sh 'docker rmi ${APP_NAME}:latest'
            }
        }
    }
    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the logs for errors.'
        }
    }
}
