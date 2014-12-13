#!/bin/bash


#==============================================================
#
# Rough plan of web server installation:
#
#--------------------------------
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
#			Status: RECHECK
#
#   1.5. Install download-only plugin for yum to be able to save packages without installing
#     yum install yum-plugin-downloadonly
#
#     Status: almost finished
#
#	1.6. Set UTC timezone
#			ln -sf /usr/share/zoneinfo/UTC /etc/localtime
#
#--------------------------------
# 2. Add necessary repositories
#   2.1. EPEL repository (TODO: for what)
#     yum install epel-release
#   2.2. REMI repository (TODO: for what)
#     rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
#
#   Status: seems to be OK
#
#--------------------------------
# 3. Samba installation and configuration
#   3.1. Install all Samba packages
#   3.2. Configure samba server, setup samba folder
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#


#




curl -L -O "https://raw.githubusercontent.com/vpalichev/CentOS-setup-done-right/master/basic-install-script.sh"
echo "TEST TEST TEST !!!"


# 1. Enable yum caching
sed -i 's/keepcache=0/keepcache=1/g' /etc/yum.conf

# 2. Not much here yet!


# 3. 


echo "The end of basic web server installation script is reached: "
echo date +"%Y-%m-%dU%H-%M-%S"