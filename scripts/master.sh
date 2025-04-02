#!/bin/bash

### Run commands below one by one NOT execute this Script directly... (!!!)

### Parameters Basic... (!!!)
sudo passwd root

### In the same time, Set Up UFW in GUI mode... (!!!)
sudo ufw enable

### NetBios for Domains configure... (!!!)
sudo hostname TR1
sudo nano /etc/hostname
sudo nano /etc/hosts

### Unlock Parrot Update only... (!!!)
sudo dpkg -i parrot-archive-keyring_2024.12_all.deb
sudo apt update
sudo apt full-upgrade -y

### Set up Ruby Install Fest... (!!!)
git -v
ruby -v
sudo gem install rails
git config --global user.name "Personn"
git config --global user.email "personn@gmail.com"
git config --get user.name
git config --get user.email
git config --global color.ui auto
ls ~/.ssh/id_rsa
ssh-keygen -C personn@gmail.com -t rsa
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id-rsa.pub
curl https://cli-assets.heroku.com/install.sh | sh
heroku version
heroku keys:add

flatpak install flathub org.mozilla.Thunderbird

wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/virtualbox-archive-keyring.gpg
sudo apt update
sudo apt install virtualbox -y

### Misc. basic packages... (!!!)
sudo apt install gimp -y
sudo apt install krita -v
sudo apt install qmmp -y

### Snap to start... (!!!)
sudo apt install snapd -y
sudo snap install notion-snap-reborn
sudo snap install chatgpt-desktop
sudo snap install onlyoffice-desktopeditors
sudo apt install filezilla -y

### Tor to package use... (!!!)
sudo apt install apt-transport-https

### Penser à installer Proton VPN (script existant)... (!!!)

### Suite sécurité... v.IMP... (!!!)
sudo apt install forensics-all -y
### DNSrecon est inclus dans le paquet ci-dessus... (!!!)
sudo apt install sublist3r -y
sudo apt install amass -y
sudo apt install assetfinder -y

### Installation de PHP... (!!!)
sudo apt install php -y

### At now it the end... (!!!)
reboot
exit
