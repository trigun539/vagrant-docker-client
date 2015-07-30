# New Docker Environment

# Update 
sudo apt-get update

# Install Docker
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install -y lxc-docker

# RUN after vagrant machine is up: 
# Making it easier to work with docker
sudo usermod -aG docker vagrant

# Install GIT
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install -y git

# Install CURL
sudo apt-get install -y curl

# Install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.3.3/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Restart Docker service
sudo service docker restart