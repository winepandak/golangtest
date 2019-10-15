#!/bin/bash
#tar -xvf /opt/temp/temp.tar.gz -C /opt/temp/
GOOS=linux GOARCH=amd64 GOTRACEBACK=all GOPATH=/opt/soft/gowork:/opt/temp/common:/opt/temp/nua /usr/local/go/bin/go build -o /opt/temp/nua/nua main
rm -rf /opt/nua/nua.bak
mv /opt/nua/nua /opt/nua/nua.bak
cp /opt/temp/nua/nua /opt/nua
rm -rf /opt/temp
#rm -rf /opt/temp/temp.tar.gz