#!/usr/bin/env bash

#ssh_host=$1
echo "ssh_host=$1"

#ssh_host="root@47.75.54.93"        #hk
#ssh_host="root@47.111.169.42"      #hz
#ssh_host="root@149.129.175.159"    #india

ssh_host="root@47.56.130.152"    #hk test

ssh $ssh_host 'rm -rf /opt/temp'
ssh $ssh_host 'mkdir /opt/testproject'
ssh $ssh_host 'mkdir /opt/temp'



ssh $ssh_host 'git clone https://187225207@qq.com:Edifieal1716@github.com/winepandak/golangtest.git /opt/testproject'
#ssh $ssh_host 'git clone https://187225207@qq.com:Edifieal1716@github.com/winepandak/golangtest.git /opt/temp/common'

ssh $ssh_host '\cp -rf /opt/temp/nua/start.sh /opt/testproject/'
ssh $ssh_host '\cp -rf /opt/temp/nua/stop.sh /opt/testproject/'
ssh $ssh_host '\cp -rf /opt/temp/nua/grace_restart.sh /opt/testproject/'

if ssh $ssh_host test -e /opt/testproject/nua.json;
then
    echo "File exists '/opt/testproject/nua.json'"
else
    ssh $ssh_host '\cp -rf /opt/temp/nua/nua.json /opt/nua/'
fi

ssh $ssh_host 'chmod +x /opt/testproject/*.sh'

ssh $ssh_host '/opt/testproject/nua_git.sh'

ssh $ssh_host '/opt/testproject/grace_restart.sh'