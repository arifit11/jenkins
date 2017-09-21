#!/bin/bash
echo "*************************Installing Jinkins*********************"

yum install jenkins -y

sleep 3

echo "*************************Installing Java*********************"
sleep 5
yum install java -y

echo "*************************Installing Apache*********************"

yum install httpd -y

systemctl enable httpd
systemctl start httpd
sleep 3
echo "*************************opeing ports in firewall*********************"
seleep 5
systemctl enable firewalld
sleep 3
systemctl start firewalld
sleep 3
firewall-cmd --add-port=8080/tcp --permanent
firewall-cmd --add-service=http --permanent
sleep 3
firewall-cmd --reload
firewall-cmd --list-all

service jenkins start
/sbin/chkconfig jenkins on

sleep 3
echo "*******************Jenkins is all Setup*******************"
sleep 5

