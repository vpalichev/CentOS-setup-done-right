#!/bin/bash


#Rough plan of web server installation:
# 1. Enable yum keepcache (ok):
#   Set "keepcache = 1" in "/etc/yum.conf"
#
#   Status: FINISHED
# 2. Set ethernet adapter
#
#
#
#
#   Status: A LOT TO WORK ON (but ok in general)
# 3.
#
#





# 1. Enable yum caching
sed -i 's/keepcache=0/keepcache=1/g' /etc/yum.conf


