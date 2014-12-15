# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

function bwsinst { #basic web server installation
	echo 'Downloading and running basic web server installation script'
	echo 'from github.com/vpalichev/CentOS-setup-done-right/raw/master/basic-install-script.sh'
	curl -L -o /root/basic-install-script.sh github.com/vpalichev/CentOS-setup-done-right/raw/master/basic-install-script.sh
	chmod 775 /root/basic-install-script.sh

	echo "First parameter in bashrc: ${1}"

	#Pass "--justgeneric" to setup generic stuff only and then stop
	/root/basic-install-script.sh $1
}

#TO BE REMOVED
function genericbashtesting {
	echo "Fist argument is: ${1}"
}

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
