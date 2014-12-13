# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

function bwsinst { #basic web server installation
	curl -L -o /root/basic-install-script.sh github.com/vpalichev/CentOS-setup-done-right/raw/master/basic-install-script.sh
}

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
