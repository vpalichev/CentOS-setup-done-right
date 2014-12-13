#!/bin/bash

# To download this script
# curl -L -o /root/basic-install-script.sh github.com/vpalichev/CentOS-setup-done-right/raw/master/basic-install-script.sh


#==============================================================
#
# Rough plan of web server installation:
#
#------------------------------------
# 1. Very basic system routines
#
#   1.1. Set ethernet adapter
#     Edit "/etc/sysconfig/network-scripts/ifcfg-eth0" and "/etc/sysconfig/network"
#     Refer to: http://www.cyberciti.biz/faq/linux-configure-a-static-ip-address-tutorial/
#
#     Status: A LOT TO WORK ON (but OK in general)
#
#   1.2. Turn off SELinux 
#     Edit "vi /etc/selinux/config"
#     TODO: sed replace SELINUX with "SELINUX=disabled"
#
#     Status: not ready
#
#   1.3. Turn off firewall (USE WITH CARE)   
#     chkconfig iptables off
#     service iptables stop
#
#     OR
#       1.2 Add following INPUT rule: -A INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT
#       1.3 Restart Iptables Firewall: service iptables restart
#       /etc/init.d/iptables restart
#
#			Status: not ready
#
#   1.4. Save installed packages in yum cache 
#			Set "keepcache = 1" in "/etc/yum.conf"
#
#			Status: ok for now
#
#   1.5. (optional) Install download-only plugin for yum to be able to save packages without installing
#     yum install yum-plugin-downloadonly
#
#     Status: almost finished
#
#		1.6. Set UTC timezone
#			ln -sf /usr/share/zoneinfo/UTC /etc/localtime
#
#			Status: ready to be implemented
#
#------------------------------------
# 2. Add necessary repositories
#   2.1. EPEL repository (TODO: for what)
#     yum install epel-release
#   2.2. REMI repository (TODO: for what)
#     rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
#		2.3. Create repo file for nginx
#
#   Status: seems to be OK
#
#--------------------------------
# 3. Setup SFTP
#   ???
#   ???
#
#		Status: 
#
# 4. Install nginx
#
#
# 5. Install PHP
#
#
#
#



# Beginning echo's
echo -e "\e[33m----------------------------------------------\e[0m"
CurrentTime=$(date -u +'%Y-%m-%dU%H-%M-%S')
echo -e "\e[33m$CurrentTime: commencing basic-install-script.sh \e[0m"

# 1.1. Set ethernet adapter settings
# ???



    Edit "/etc/sysconfig/network-scripts/ifcfg-eth0" and "/etc/sysconfig/network"
#     Refer to: http://www.cyberciti.biz/faq/linux-configure-a-static-ip-address-tutorial/
#
#     Status: A LOT TO WORK ON (but OK in general)
#
#   1.2. Turn off SELinux 
#     Edit "vi /etc/selinux/config"
#     TODO: sed replace SELINUX with "SELINUX=disabled"


# 1.3. Turn off firewall (USE WITH CARE)   
chkconfig iptables off
service iptables stop

# 1.4. Enable yum cache
echo "Enabling yum cache..."
sed -i 's/keepcache=0/keepcache=1/g' /etc/yum.conf

# 1.5. (optional) Install download-only plugin for yum to be able to save packages without installing
echo "Installing download-only plugin for yum..."
yum -y install yum-plugin-downloadonly

# 1.6. Set UTC timezone
echo "Setting UTC timezone..."
ln -sf /usr/share/zoneinfo/UTC /etc/localtime


# 2. Adding repositories
# 2.1. EPEL repository (TODO: for what)
echo "Adding EPEL repository..."
yum -y install epel-release

# 2.2. REMI repository (TODO: for what)
echo "Adding REMI repository..."
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

# 2.3. Create repo file for nginx
echo "Adding repo file for nginx..."
curl -L -o "/etc/yum.repos.d/nginx.repo" "https://github.com/vpalichev/CentOS-setup-done-right/raw/master/RepoFiles/nginx.repo"


# 3. Setup SFTP
#   ???

# 4. Install nginx
echo "Installing nginx..."
yum -y install nginx
service nginx start


# 5. Install PHP
echo "Installing PHP..."
yum -y --enablerepo=remi,remi-php56 install php-fpm php-common


# 2. Not much here yet!


# 3. 

echo -e "\e[33m$CurrentTime: finishing basic-install-script.sh \e[0m"
CurrentTime=$(date -u +'%Y-%m-%dU%H-%M-%S')
echo -e "\e[33m----------------------------------------------\e[0m"