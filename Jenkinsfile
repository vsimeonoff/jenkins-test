node {
    stage ('Main stage') {
        stage('Test') {
            steps {
                sh './gradlew test'
            }
        }
        stage('Build'){
            steps {
                sh './gradlew build'
            }
        }
        stage('Build docker image') {
            steps {
                sh './gradlew buildDocker'
            }
        }
        stage('Deploy docker image') {
            steps {
                sh 'echo Deploy docker image'
            }
        }
    }
}