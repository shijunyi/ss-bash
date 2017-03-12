#! /bin/sh
 
ps -fe|grep shadowsocks |grep -v grep

if [ $? -ne 0 ]

then

/root/ss-bash/ssadmin.sh restart
echo "\nrestart Shadowsocks" `date` >> /root/ss-update.log

fi