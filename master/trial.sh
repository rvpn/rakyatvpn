#!/bin/bash
#Script auto create trial user SSH
#yg akan expired setelah 1 hari



Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`

useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "==== Create Trial SSH ===="
echo -e "IP Host       : xxxxxxxxx"
echo -e "Openssh Port  : 22.143"
echo -e "Port Dropbear : 443,110,2017"
echo -e "Username      : $Login"
echo -e "Password      : $Pass\n"
echo -e "==========================="
echo -e "Powered By \e[1;33;44m Worm \e[0m"
echo -e ""