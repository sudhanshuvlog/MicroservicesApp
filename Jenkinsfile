pipeline {
    agent {
        label 'ec2'
    }

    stages {
        stage('Deploy To Kubernetes') {
            steps {
                    withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'EKS-GFG', contextName: '', credentialsId: 'k8-token', namespace: 'webapps', serverUrl: 'https://A6BD28A17EB69073610F7D23AF71216A.gr7.ap-south-1.eks.amazonaws.com']]) {
                    sh "kubectl apply -f deployment-service.yml"
                    }
            }
        }
        
        stage('verify Deployment') {
            steps {
               withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'EKS-GFG', contextName: '', credentialsId: 'k8-token', namespace: 'webapps', serverUrl: 'https://A6BD28A17EB69073610F7D23AF71216A.gr7.ap-south-1.eks.amazonaws.com']]) {
                    sh "kubectl get svc -n webapps"
                }
            }
        }
    }
}
