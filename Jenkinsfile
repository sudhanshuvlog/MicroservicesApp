pipeline {
    agent {
        label 'slave'
    }

    stages {
        stage('Build & Tag Docker Image') {
            steps {
                script {
                    dir('src') {

                    withDockerRegistry(credentialsId: 'docker-cred') {
                        sh "docker build -t vikasprince/cartservice:latest ."
                    }
                        }
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-cred') {
                        sh "docker push vikasprince/cartservice:latest "
                    }
                }
            }
        }
    }
}
