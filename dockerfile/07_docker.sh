adduser -u 1005 --disabled-password --home /home/hushmesh --shell /bin/bash --gecos hushmesh hushmesh
addgroup --gid 123 docker
usermod -aG docker hushmesh
apt-get update
apt-get install -y docker.io

# Install azure cli
curl -sL https://aka.ms/InstallAzureCLIDeb | bash
