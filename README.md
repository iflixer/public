# public files

Prerequisites:
```
ubuntu >20
apt-get install -y git ssh docker.io docker-compose
```

To init new server with app from repository, run this command (replace <path-to-repo>!!!):
```bash
git clone https://github.com/iflixer/public.git installer && bash ./installer/init.sh <path-to-repo> && rm -rf installer
```
It will install the app to the ~/app

```
<path-to-repo> should be like "username/project.git"
```
