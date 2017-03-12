#!/bin/sh

/root/ss-bash/ssadmin.sh reset_all_used
/root/ss-bash/ssadmin.sh restart
echo "\nreset_all_used" `date` >> /root/ss-update.log