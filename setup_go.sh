# 习惯用vim，没有的话可以用命令`sudo apt-get install vim`安装一个
#vim /etc/profile
# 在最后一行添加
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
# wq保存退出后source一下
source /etc/profile