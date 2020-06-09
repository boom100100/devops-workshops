sudo apt-get update
sudo apt-get install -y apache2


#install docker
sudo apt-get remove docker docker-engine docker-ce docker.io
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
yes | sudo apt-get install docker-ce=17.12.0~ce-0~ubuntu
sudo groupadd docker
sudo usermod -aG docker $vagrant
sudo docker version
sudo docker run hello-world

#vagrant settings
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
