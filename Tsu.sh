#usr/bin/bash
#mmk >;(
#crate LILO>_
g="\033[32;1m"
y="\033[33;1m"
i="\033[34;1m"
r="\033[31;1m"
p="\033[37;1m"
c="\033[36;1m"
w="\033[39;1m"
clear
echo $i
figlet TsuSec
echo $g
echo " TsuSec scanner "
echo " author by : LiLo>_ "
echo $g
echo "- scan_dir : sdir "
echo "- Reverse Ip : ip"
echo "- Tracking ip : Tip "
echo "- Deface Webdav : webdav"
echo "- cek subdomain : subdo "
echo $y ""
read -p ">> : " cmd
if [ $cmd = "help" ]
then
echo $g
echo "-scan_dir : sdir "
echo "- Reverse Ip : ip"
echo "- Tracking ip : Tip "
echo "- Deface Webdav : webdav"
echo "- cek subdomain : subdo "
fi
if [ $cmd = "sdir" ]
then
pip2 install dirhunt
clear
echo $w"Your Target ( Ex : https://www.xnxx.comm / http://nekopai.care )"
echo $g
read -p "Your Target : " target1
dirhunt $target1
fi
if [ $cmd = "ip" ]
then
echo $w
read -p "Ip Your Target : "  ip
echo $g
curl https://api.hackertarget.com/reverseiplookup/?q=$ip
echo
fi
if [ $cmd = "Tip" ]
then
echo $g
read -p "Ip Target : " target_ip
curl https://api.hackertarget.com/geoip/?q=$target_ip
echo
fi
if [ $cmd = "webdav" ]
then
echo $w
read -p "Your Targer : " target
read -p "Lokasi Script Deface : " file
echo $g
curl -T $file $target
fi
if [ $cmd = "subdo" ]
then
echo $w
echo "Target ( Ex : www.target.com ) not http/https :"
echo $g
read -p "web target:" web
curl https://api.hackertarget.com/hostsearch/?q=$web
