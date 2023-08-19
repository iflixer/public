# public files

Prerequisites:
```
ubuntu >20
git 
docker
docker-compose
```

To init new server with app from repository, run this command (replace <path-to-repo>!!!):
```bash
git clone https://github.com/iflixer/public.git installer && bash ./installer/init.sh <path-to-repo> && rm -rf installer
```
It will install the app to the current user's home dir

<path-to-repo> should be like "username/project.git"


git clone https://github.com/iflixer/public.git installer && bash ./installer/init.sh iflixer/web.git && rm -rf installer