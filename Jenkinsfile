pipeline {
    agent {
        label 'ec2'
    }

    stages {
        stage('Deploy To Kubernetes') {
            steps {
                script {
                    // Retrieve DockerHub credentials (username + password)
                    withCredentials([usernamePassword(credentialsId: 'docker-cred', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    // Replace ${DOCKER_USER} in deployment YAML
                        sh """
                            envsubst < deployment-service.yml > temp.yml && mv temp.yml deployment-service.yml
                        """
                        // Apply the dynamically updated YAML to Kubernetes
                        withKubeCredentials(kubectlCredentials: [[
                            caCertificate: '', 
                            clusterName: 'EKS-1', 
                            contextName: '', 
                            credentialsId: 'k8-token', 
                            namespace: 'webapps', 
                            serverUrl: 'https://8B8F6CE5C43EDCB0EBF0028032F1A288.sk1.ap-south-1.eks.amazonaws.com'
                        ]]) {
                            sh "kubectl apply -f deployment-service.yml"
                        }
                    }
                }
            }
        }

        stage('Verify Deployment') {
            steps {
                withKubeCredentials(kubectlCredentials: [[
                    caCertificate: '', 
                    clusterName: 'EKS-1', 
                    contextName: '', 
                    credentialsId: 'k8-token', 
                    namespace: 'webapps', 
                    serverUrl: 'https://8B8F6CE5C43EDCB0EBF0028032F1A288.sk1.ap-south-1.eks.amazonaws.com'
                ]]) {
                    sh "kubectl get svc -n webapps"
                }
            }
        }
    }

}


