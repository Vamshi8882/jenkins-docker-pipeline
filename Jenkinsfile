pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t jenkins-docker-pipeline ./app'
            }
        }

        stage('Run Tests') {
            steps {
                echo 'Running tests inside Docker container...'
                bat 'docker run --rm jenkins-docker-pipeline ./run-tests.bat'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deployment stage (placeholder)'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check logs.'
        }
    }
}
