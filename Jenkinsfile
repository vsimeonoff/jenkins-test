node {
    docker.image('node:4.1.2').inside {
        stage('Prepare') {
            checkout scm
        }
        stage('Main stage') {
            stage('Test') {
                sh './gradlew test'
            }
            stage('Build') {
                sh './gradlew build'
            }
            stage('Build docker image') {
                sh './gradlew buildDocker'
            }
            stage('Deploy docker image') {
                sh 'echo Deploy docker image'
            }
        }
    }
}