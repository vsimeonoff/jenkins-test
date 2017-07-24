node {
    stage ('Prepare') {
        checkout scm
    }
    stage('Main stage') {
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