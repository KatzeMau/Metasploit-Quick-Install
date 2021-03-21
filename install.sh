#!/bin/bash


# NEW CODE #
# to skip any questions from APT
export DEBIAN_FRONTEND=noninteractive

AUTO_SIGNUP=0

while getopts "a" opt; do
	case $opt in
	a)
	    AUTO_SIGNUP=1
	    ;;
	esac
done

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

#int the script, like update and upgrade
apt-get update 
apt-get upgrade -y


#Install De
apt -y install build-essential zlib1g zlib1g-dev libxml2 libxml2-dev libxslt-dev
apt -y install locate libreadline6-dev libcurl4-openssl-dev git-core libssl-dev libyaml-dev
apt -y openssl autoconf libtool ncurses-dev bison curl wget postgresql
apt -y  postgresql-contrib libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev
apt install ruby-dev -y
apt install git-core postgresql curl nmap gem libsqlite3-dev



#Metasploit Instalation
cd /opt
git clone https://github.com/rapid7/metasploit-framework.git
cd metasploit-framework

#Gem commands
gem install wirble sqlite3 bundler
gem install nokogiri
gem install bundle
bundle install


echo "THANKS FOR USING MY SCRIPT,DONATE SOME BTC TO SUPPORT ME :D (BTC: 3CQFyuKYzsarYZcYxMfsJBmzNGcuRQURSu)"
echo "Installation and configuration completed!"

#THANKS FOR USING MY SCRIPT, 
#PLS STAR AND DONATE SOME BTC TO SUPPORT ME :D 
#BTC 3CQFyuKYzsarYZcYxMfsJBmzNGcuRQURSu

echo "Finished!"
echo "Now run ./msfconsole"

exit