
## Customisation for Cybertaipan

```
cd ~
git clone https://github.com/lovebarnowls/completeimage2
if got clone doesn't work, require apt install.
sudo apt-get update
sudo apt install git
git clone https://github.com/lovebarnowls/completeimage2
continue with below instructions
cd completeimage2
sudo chmod a+x *.sh
sudo -H ./inject.sh
sudo -H ./install.sh
#lovebarnowls can't be bothered to change the wallpaper
./wallpaper.sh

Customization for AWS Scaling
#!/bin/bash
chown ubuntu:ubuntu /home/ubuntu/Desktop/*
chmod a+rw /home/ubuntu/Desktop/*
mkdir -p home/ubuntu/Desktop
mkdir -p usr/local/bin/pysel/Event_checks
cd /home/ubuntu
apt-get update -y -qq
apt install git -y -qq
git clone https://github.com/lovebarnowls/completeimage2.git
cd /home/ubuntu/completeimage2
mv /home/ubuntu/completeimage2/score.py /usr/local/bin/pysel/
mv /home/ubuntu/completeimage2/pysel.py /usr/local/bin/pysel/
mv /home/ubuntu/completeimage2/Event_checks/* /usr/local/bin/pysel/Event_checks/
chmod a+x inject.sh
./inject.sh -y -qq
chmod a+x install.sh
./install.sh -y -qq
systemctl enable pysel_scoring.service
systemctl start pysel_scoring.service
