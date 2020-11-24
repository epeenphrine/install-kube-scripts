swapoff -a; 
sudo apt update -y ; 
sudo apt upgrade -y ;
sudo apt install docker.io docker-compose -y ; 
sudo systemctl enable docker ; 
sudo systemctl start docker ;
usermod -aG docker ; 
newgrp docker ; 
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add ;
sudo apt-get install apt-transport-https curl -y ;
sudo apt install software-properties-common -y ;
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main" ;
sudo apt-get install kubeadm kubelet kubectl -y ;
sudo apt-mark hold kubeadm kubelet kubectl ;
kubeadm version ;





