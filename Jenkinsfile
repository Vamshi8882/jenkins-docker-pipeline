pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t jenkins-docker-pipeline ./app'
            }
        }

        stage('Run Tests') {
            steps {
                echo 'Running tests inside Docker container...'
                sh 'docker run --rm jenkins-docker-pipeline ./run-tests.sh'
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
