pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'develop', url: 'https://github.com/seshuadi969/habitica.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Run App') {
            steps {
                sh 'java -cp target/habitica-demo-1.0-SNAPSHOT-jar-with-dependencies.jar HelloWorld'

            }
        }
    }
}

