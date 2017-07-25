def deployTo(targetProject, version) {
    deployEnv = ['MY_BUILD_VERSION=' + version, 'TARGET_PROJECT=' + targetProject]
    withEnv(deployEnv) {
        sh 'echo deploying int'
    }
}

node {
    stage ('Prepare') {
        checkout scm
    }
    stage('Main stage') {
        stage('Build') {
            sh './gradlew build'
        }

        stage('Test') {
            sh './gradlew test'
        }
    }
}

stage('ask deploy') {
    input 'Deploy int?'
}

node {
    stage('deployment int') {
        deployTo('int', 1)
    }
}
