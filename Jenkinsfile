pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'gradle test'
            }
        }
        stage('Build'){
            steps {
                sh 'gradle build'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo Deploy stage'
            }
        }
    }
}