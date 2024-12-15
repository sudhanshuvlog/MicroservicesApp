pipeline {
    agent {
        label 'ec2'
    }

    stages {
        stage('Deploy To Kubernetes') {
            steps {
                   withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'EKS-1', contextName: '', credentialsId: 'k8-token', namespace: 'webapps', serverUrl: 'https://238CF7E35143ADB43515074FA37A2B82.gr7.ap-south-1.eks.amazonaws.com']]) {
                    sh "kubectl apply -f deployment-service.yml"
                    }
            }
        }
        
        stage('verify Deployment') {
            steps {
               withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'EKS-1', contextName: '', credentialsId: 'k8-token', namespace: 'webapps', serverUrl: 'https://238CF7E35143ADB43515074FA37A2B82.gr7.ap-south-1.eks.amazonaws.com']]) {
                         sh "kubectl get svc -n webapps"
                }
            }
        }
    }
}
