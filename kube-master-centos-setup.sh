kubeadm config images pull ;
firewall-cmd --zone=public --permanent --add-port={6443,2379,2380,10250,10251,10252}/tcp ;
firewall-cmd --zone=public --permanent --add-rich-rule 'rule family=ipv4 source address=worker-IP-address/32 accept' ;
firewall-cmd --zone=public --permanent --add-rich-rule 'rule family=ipv4 source address=172.17.0.0/16 accept' ;
firewall-cmd --reload ;
kubeadm init --pod-network-cidr 192.168.0.0/16 ; 
mkdir -p $HOME/.kube ; 
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config ; 
chown $(id -u):$(id -g) $HOME/.kube/config ; 
kubectl apply -f  https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml ; 
kubectl taint nodes --all node-role.kubernetes.io/master- ; 
kubectl get nodes 
