adduser -u 1005 --disabled-password --home /home/hushmesh --shell /bin/bash --gecos hushmesh hushmesh
addgroup --gid 123 docker
usermod -aG docker hushmesh
apt-get update
apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io
usermod -g docker root
