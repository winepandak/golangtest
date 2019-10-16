::#""!/usr/bin/env bash

::ssh_host=$1
echo "ssh_host=$1"

::ssh -p22 root@47.56.130.152

set ssh_host = "-p 22 root@47.56.130.152"

ssh ssh_host 'rm -rf /opt/temp'
ssh ssh_host 'mkdir /opt/testproject'
ssh ssh_host 'mkdir /opt/temp'



::ssh ssh_host 'git clone https://187225207@qq.com:Edifieal1716@github.com/winepandak/golangtest.git /opt/testproject'
::ssh ssh_host 'git clone https://github.com/winepandak/golangtest.git /opt/testproject'


::ssh %ssh_host '\cp -rf /opt/testproject/start.sh /opt/testproject/'
::ssh %ssh_host '\cp -rf /opt/testproject/stop.sh /opt/testproject/'
::ssh %ssh_host '\cp -rf/opt/testproject/grace_restart.sh /opt/testproject/'


::ssh %ssh_host 'chmod +x /opt/testproject/*.sh'

::ssh %ssh_host '/opt/testproject/nua_git.sh'

::ssh %ssh_host '/opt/testproject/grace_restart.sh'