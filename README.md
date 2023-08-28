# public files

Prerequisites:
```
ubuntu >= 22
apt-get update && apt-get install -y git ssh docker.io docker-compose
```

To init new server with app from repository, run this command:
```bash
#to install balancer
git clone https://github.com/iflixer/public.git installer && bash ./installer/init.sh iflixer/balancer.git && rm -rf installer
#to install web
git clone https://github.com/iflixer/public.git installer && bash ./installer/init.sh iflixer/web.git && rm -rf installer
#to install uploader
git clone https://github.com/iflixer/public.git installer && bash ./installer/init.sh iflixer/web-uploader.git && rm -rf installer
```
It will install the repo to the ~/app

