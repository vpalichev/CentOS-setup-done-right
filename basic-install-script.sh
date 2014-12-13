#!/bin/bash


#Rough plan of web server installation:

# 1. Very basic system routines
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


# 2. Enable yum keepcache (ok):
#   Set "keepcache = 1" in "/etc/yum.conf"
#
#   Status: FINISHED
#
# 3. Turn off firewall (USE WITH CARE):
#
#





# 1. Enable yum caching
sed -i 's/keepcache=0/keepcache=1/g' /etc/yum.conf

# 2. Not much here yet!


# 3. 
