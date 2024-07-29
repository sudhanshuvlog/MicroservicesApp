[root@ip-172-31-4-41 /]# history
    1  yum install docker -y
    2  systemctl start docker
    3  cd /
    4  docker run -d -v jenkins_home:/var/jenkins_home --name jenkins -d -p 8080:8080 -p 50000:50000 --restart=on-failure jenkins/jenkins:lts-jdk17
    5  docker ps
    6  docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
    7  wget https://download.oracle.com/java/17/archive/jdk-17.0.10_linux-x64_bin.rpm
    8  yum install jdk-17.0.10_linux-x64_bin.rpm -y
    9  docker ps
   10  mkdir slave
   11  ls
   12  curl -sO http://13.233.246.163:8080/jnlpJars/agent.jar
   13  java -jar agent.jar -url http://13.233.246.163:8080/ -secret 04700c5aa1d9e793ec89b35648d38d88bbe14f22da49226972e80a3800e2ca82 -name ec2 -workDir "/slave" &
   14  yum install git -y
   15  ls
   16  cd slave/
   17  ls
   18  cd workspace/
   19  ls
   20  docker images
   21  docker images
   22  aws configure
   23  clear
   24  aws s3 ls
   25  curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
   26  chmod +x ./kubectl
   27  sudo mv ./kubectl /usr/local/bin
   28  kubectl version --short --client
   29  curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
   30  sudo mv /tmp/eksctl /usr/local/bin
   31  eksctl version
   32  eksctl create cluster --name=EKS-1                       --region=ap-south-1                       --zones=ap-south-1a,ap-south-1b                       --without-nodegroup 
   33  eksctl create nodegroup --cluster=EKS-1                        --region=ap-south-1                        --name=node2                        --node-type=t3.medium                        --nodes=3                        --nodes-min=2                        --nodes-max=4                        --node-volume-size=20                        --ssh-access                        --ssh-public-key=DevOps                        --managed                        --asg-access                        --external-dns-access                        --full-ecr-access                        --appmesh-access                        --alb-ingress-access
   34  kubectl get pods
   35  kubectl get nodes
   36  cd /
   37  vi sa.yml
   38  kubectl apply -f sa.yml 
   39  kubectl create namespace webapps
   40  kubectl apply -f sa.yml 
   41  vi role.yml
   42  kubectl apply -f role.yml 
   43  vi bindrole.yml
   44  kubectl apply -f bindrole.yml 
   45  vi secret.yml
   46  kubectl apply -f secret.yml 
   47  vi secret.yml
   48  kubectl apply -f secret.yml 
   49  kubectl get secret
   50  kubectl get secret -n webapps
   51  kubectl describe secret  -n webapps
   52  kubectl get pods
   53  kubectl get pods -n webapps
   54  kubectl get svc -n webaps
   55  kubectl get svc -n webapps
   56  kubectl get pods
   57  kubectl get pods -n webapps
   58  kubectl delete pod cartservice-d586f56d-26pnw -n webapps
   59  kubectl get pods -n webapps
   60  kubectl get pods -n webapps
   61  kubectl describe pod checkoutservice-6c67bb87f-t8f4t -n webapps
   62  kubectl describe pod checkoutservice-6c67bb87f-t8f4t -n webapps
   63  kubectl describe pod checkoutservice-6c67bb87f-t8f4t -n webapps
   64  kubectl describe pod checkoutservice-6c67bb87f-t8f4t -n webapps
   65  kubectl get nodes
   66  kubectl describe pod checkoutservice-6c67bb87f-t8f4t -n webapps
   67  kubectl get pods -n webapps
   68  kubectl get pods -n webapps
   69  kubectl describe pod checkoutservice-6c67bb87f-cfpmd -n webapps
   70  eksctl delete cluster --name EKS-1 --region ap-south-1
   71  history
