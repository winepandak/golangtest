#!/bin/bash
#tar -xvf /opt/temp/temp.tar.gz -C /opt/temp/
GOOS=linux GOARCH=amd64 GOTRACEBACK=all GOPATH=/opt/golib:/opt/testproject /usr/local/go/bin/go build -o /opt/testproject/bin main
#变量                                          go的相关库路径   ：公共工具路径    ：项目路径     空格 go的安装路径      build -o 输出编译文件路径   编译文件名
rm -rf /opt/nua/nua.bak
mv /opt/nua/nua /opt/nua/nua.bak
cp /opt/temp/nua/nua /opt/nua
rm -rf /opt/temp
#rm -rf /opt/temp/temp.tar.gz