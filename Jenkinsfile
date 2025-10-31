pipeline {
    agent any

    environment {
        IMAGE_NAME = "jenkins-docker-pipeline"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Vamshi8882/jenkins-docker-pipeline.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo '🛠️ Building Docker image...'
                bat 'docker build -t %IMAGE_NAME% ./app'
            }
        }

        stage('Run Tests') {
            steps {
                echo '🧪 Running tests inside container...'
                bat 'docker run --rm %IMAGE_NAME% sh ./run-tests.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Deployment successful!'
            }
        }
    }

    post {
        success {
            echo '✅ Build completed successfully!'
            emailext to: 'youremail@gmail.com',
                     subject: 'Build Success',
                     body: 'The Jenkins Docker Pipeline build succeeded.'
        }
        failure {
            echo '❌ Build failed. Check logs.'
            emailext to: 'youremail@gmail.com',
                     subject: 'Build Failed',
                     body: 'The Jenkins Docker Pipeline build failed. Please review the console output.'
        }
    }
}