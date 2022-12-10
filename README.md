# sogadockerCertificate
解决因为docker soga 证书到期不自动重新申请的问题
直接运行
```
wget https://raw.githubusercontent.com/heaid/sogadockerCertificate/main/restart.sh && chmod +x restart.sh && bash restart.sh
```

定时任务
```
crontab -e
```
```
44 5 31 * * /root/restart.sh
```
```
wget https://raw.githubusercontent.com/heaid/sogadockerCertificate/main/restart.sh && chmod +x restart.sh
```
