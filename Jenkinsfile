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
                // use sh inside container because it's Linux
                bat 'docker run --rm jenkins-docker-pipeline sh ./run-tests.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy stage (optional)'
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed. Check logs.'
        }
    }
}
