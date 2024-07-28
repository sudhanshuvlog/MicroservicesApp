pipeline {
    agent {
        label 'ec2'
    }

    stages {
        stage('Deploy To Kubernetes') {
            steps {
                   withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'EKS-1', contextName: '', credentialsId: 'k8-token', namespace: 'webapps', serverUrl: 'https://16CE18FB009DBEDB9C5BD5B237F54C7A.gr7.ap-south-1.eks.amazonaws.com']]) {
                    sh "kubectl apply -f deployment-service.yml"
                    }
            }
        }
        
        stage('verify Deployment') {
            steps {
               withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'EKS-1', contextName: '', credentialsId: 'k8-token', namespace: 'webapps', serverUrl: 'https://16CE18FB009DBEDB9C5BD5B237F54C7A.gr7.ap-south-1.eks.amazonaws.com']]) {
                         sh "kubectl get svc -n webapps"
                }
            }
        }
    }
}
