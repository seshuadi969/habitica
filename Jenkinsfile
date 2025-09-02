pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t habitica-app .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8080:8080 habitica-app'
            }
        }
    }
}


