#!/usr/bin/env bash
echo "重启Docker容器名称为：soga">>/root/restart.log
rm -rf  /etc/soga
docker container restart $(docker ps -aq) 
echo "重启命令的执行状态："$?>>/root/restart.log
if [ $? -eq 0 ]; then
    echo "执行成功！">> /root/restart.log
else
    echo "执行失败！">> /root/restart.log
    exit
fi
echo "重启Docker容器：soga完毕！输出日志在/root/restart.log中">> /root/restart.log