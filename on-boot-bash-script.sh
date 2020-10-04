#!/bin/bash
yum -y update
yum -y install ruby wget httpd 
chkconfig httpd on  
service httpd start
cd /home/ec2-user
wget https://aws-codedeploy-eu-west-3.s3.eu-west-3.amazonaws.com/latest/install
chmod +x ./install
./install auto
service codedeploy-agent status