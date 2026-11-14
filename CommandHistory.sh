[root@ip-172-31-13-170 istio-1.32.0]# history
    1  cd /
    2  yum install docker -y
    3  systemctl start docker
    4  docker run -dit --name jenkins -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 --restart=on-failure jenkins/jenkins:lts-jdk25
    5  docker ps
    6  docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
    7  aws configure
    8  clear
    9  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.36.2/2026-07-05/bin/linux/amd64/kubectl
   10  chmod +x ./kubectl
   11  cp ./kubectl /usr/local/bin/
   12  curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
   13  sudo mv /tmp/eksctl /usr/local/bin
   14  eksctl version
   15  eksctl create cluster --name=EKS-1                       --region=ap-south-1                       --zones=ap-south-1a,ap-south-1b                       --without-nodegroup
   16  eksctl create cluster --name=EKS-48                       --region=ap-south-1                       --zones=ap-south-1a,ap-south-1b                       --without-nodegroup
   17  eksctl utils associate-iam-oidc-provider     --region ap-south-1     --cluster EKS-48     --approve
   18  eksctl create nodegroup --cluster=EKS-1                        --region=ap-south-1                        --name=node2                        --node-type=t3.medium                        --nodes=3                        --nodes-min=2                        --nodes-max=4                        --node-volume-size=20                        --ssh-access                        --ssh-public-key=DevOps                        --managed                        --asg-access                        --external-dns-access                        --full-ecr-access                        --appmesh-access                        --alb-ingress-access
   19  eksctl create nodegroup --cluster=EKS-48                        --region=ap-south-1                        --name=node2                        --node-type=t3.medium                        --nodes=2                        --nodes-min=2                        --nodes-max=4                        --node-volume-size=20                        --ssh-access                        --ssh-public-key=DevOps                        --managed                        --asg-access                        --external-dns-access                        --full-ecr-access                        --appmesh-access                        --alb-ingress-access
   20  kubectl get pods
   21  kubectl get nodes
   22  vi service-account.yaml
   23  kubectl get ns
   24  kubectl create ns webapps
   25  kubectl apply -f service-account.yaml 
   26  kubectl get sa -n webapps
   27  vi role.yaml
   28  kubectl apply -f role.yaml 
   29  vi role-binding.yaml
   30  kubectl apply -f role-binding.yaml 
   31  kubectl describe  sa jenkins -n webapps
   32  vi token.yaml
   33  kubectl apply -f token.yaml 
   34  kubectl describe  sa jenkins -n webapps
   35  kubectl describe secret mysecretname -n webapps
   36  docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
   37  wget https://download.oracle.com/java/25/latest/jdk-25_linux-x64_bin.rpm
   38  yum install jdk-25_linux-x64_bin.rpm -y
   39  mkdir data
   40  curl -sO http://65.0.199.29:8080/jnlpJars/agent.jar
   41  java -jar agent.jar -url http://65.0.199.29:8080/ -secret 68f43f216e2a4e2e43e4fb6544985dea39a8da1c9bf21dbd2320e23391adb10b -name ec2 -webSocket -workDir "/data"
   42   *
   43  java -jar agent.jar -url http://65.0.199.29:8080/ -secret 68f43f216e2a4e2e43e4fb6544985dea39a8da1c9bf21dbd2320e23391adb10b -name ec2 -webSocket -workDir "/data"&
   44  fg
   45  ps -aux | grep java
   46  ls
   47  cd data/
   48  ls
   49  java -jar agent.jar -url http://65.0.199.29:8080/ -secret 68f43f216e2a4e2e43e4fb6544985dea39a8da1c9bf21dbd2320e23391adb10b -name ec2 -webSocket -workDir "/data"&
   50  cd ..
   51  java -jar agent.jar -url http://65.0.199.29:8080/ -secret 68f43f216e2a4e2e43e4fb6544985dea39a8da1c9bf21dbd2320e23391adb10b -name ec2 -webSocket -workDir "/data"&
   52  fg
   53  ps -aux | grep java
   54  docker ps
   55  java -jar agent.jar -url http://65.0.199.29:8080/ -secret 68f43f216e2a4e2e43e4fb6544985dea39a8da1c9bf21dbd2320e23391adb10b -name ec2 -webSocket -workDir "/data"&
   56  fg
   57  java -jar agent.jar -url http://65.0.199.29:8080/ -secret 68f43f216e2a4e2e43e4fb6544985dea39a8da1c9bf21dbd2320e23391adb10b -name ec2 -webSocket -workDir "/data" &
   58  \
   59  yum install git -y
   60  kubectl get pods
   61  kubectl get pods -n webapps
   62  kubectl get svc -n webapps
   63  kubectl delete pod recommendationservice-5b98fbbdd5-mtg2m -n webapps
   64  kubectl get pods
   65  kubectl get pods -n webapps
   66  vi request-quota.yaml
   67  kubectl apply -f request-quota.yaml 
   68  vi pod.yaml
   69  kubectl apply -f pod.yaml 
   70  eksctl delete cluster --name EKS-48 --region ap-south-1
   71  history
