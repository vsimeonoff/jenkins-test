node {
    stage ('Prepare') {
        checkout scm
    }
    stage('Main stage') {
        stage('Get groups') {
            sh 'groups $(whoami)'
        }
        stage('Build') {
            sh './gradlew build'
        }
        stage('Test') {
            sh './gradlew test'
        }
        stage('Build docker image') {
            sh './gradlew buildDocker'
        }
        stage('Deploy docker image') {
            sh 'echo Deploy docker image'
        }
    }
}