#!/bin/sh

# THIS SCRIPT SHOULD BE RUN ONLY ONCE TO INIT NEW SERVER



if [ -z "$1" ] ; then
  printf "give a repository path as an argument to this script (f.ex. mycompany/myproject.git)\n"
  exit 1
fi

repository=$1

printf "Installing repository $1\n"

# prepare the keys
ssh-keygen -t ed25519 -f ~/.ssh/github-deploy -q -N ""

touch ~/.ssh/config
chmod 600 ~/.ssh/config


cat << EOM >> ~/.ssh/config
Host github-deploy
 HostName github.com
 IdentityAgent none
 IdentityFile ~/.ssh/github-deploy
EOM

printf "Please add this key to deploy keys for the repository $repository (read-only):\n"
cat ~/.ssh/github-deploy.pub

printf "Then press n\n"
# git@github.com:iflixer/web.git
while : ; do
  read -n 1 k <&1
  if [[ $k = n ]] ; then
    printf "\nTrying to clone\n"
    if git clone git@github-deploy:$repository ~/app ; then
      printf "Command succeeded!\n"
      break
    else
      printf "Command failed, add the key to github then press n\n"
    fi
  fi
done

chmod +x ~/app/restart.sh

printf "\n\nDONE! Your server is ready to work. cd to dir ~/app and run:\n ./restart.sh\n"

