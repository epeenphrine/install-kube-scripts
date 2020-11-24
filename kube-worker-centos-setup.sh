firewall-cmd --zone=public --permanent --add-port={10250,30000-32767}/tcp ;
firewall-cmd --reload ;
