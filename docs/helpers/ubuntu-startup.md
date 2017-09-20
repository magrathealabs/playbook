# Ubuntu setup
For setup your ubuntu, in easy way:

```bash

pt-get update
apt-get upgrade

wget https://atom-installer.github.com/v1.20.1/atom-amd64.deb
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb

dpkg -i gitkraken-amd64.deb -y
dpkg -i atom.amd64.deb -y

apt-get install -f

rm *.deb

apt-get install rvm
source $HOME/.rvm/scripts/rvm


apm install atom-beautify
apm install minimap

```
