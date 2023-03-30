#!/bin/bash

# Disable unattended upgrades
sudo systemctl disable --now unattended-upgrades

# Create an APT lock file
sudo touch /var/lib/dpkg/lock-frontend
sudo touch /var/lib/apt/lists/lock

# Stop any running APT processes
sudo pkill -9 apt

# Wait for a few seconds to ensure everything has stopped
sleep 5

#applications
sudo apt update 
sudo DEBIAN_FRONTEND=noninteractive apt-get install -qq postfix < /dev/null > /dev/null
sudo apt install gedit falkon john aide mysql-server -y -qq
sudo systemctl disable falkon
sudo systemctl stop falkon

#standard password change
sudo echo -e "ubuntu\nubuntu" | passwd ubuntu

#Add real users
sudo useradd quokka
sudo useradd wombat
sudo useradd echidna
sudo useradd wallaby
sudo useradd opossum
sudo useradd tasmaniandevil
sudo useradd kookaburra
sudo useradd emu
sudo useradd cane_toad


#add sudo
sudo usermod -aG sudo quokka
sudo usermod -aG sudo cane_toad
sudo usermod -aG sudo opossum

#Add unauthorized users
sudo useradd orangutan
sudo useradd sunbear
sudo useradd kiwi
sudo useradd kakapo

#STOPPED HERE
#make directories
sudo mkdir -p /home/quokka/desktop/aussie/aussie/aussie
sudo mkdir -p /home/wallaby/spirit/ofaustralia
sudo mkdir -p /home/echidna/waltzing/mathilda

#create forensics questions

#forensic1 - owner of some particular file

#forensic2 - decode message 
sudo echo 'happiestanimalintheworld' | tr a-z v-za-u |base64 > /home/quokka/desktop/aussie/aussie/aussie/decode.txt

#Bad files NOT DONE

sudo echo 'itsamemario' > /home/morton/desertland/video.mp4
sudo echo 'builttobedestroyed' > /home/morton/desertland/giantland/.koopacastle/koopacastlelayout.xlsx
sudo echo 'wariocycle' > /home/bulletbill/desktop/banzaibill/.kaboom/wariocycle.tiff
sudo echo 'thisisabackdoor' > /home/morton/desertland/giantland/notabackdoor.js



# Remove APT lock files
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/lib/apt/lists/lock

# Re-enable unattended upgrades
sudo systemctl enable --now unattended-upgrades

sudo systemctl disable falkon
sudo systemctl stop falkon


Notes

Admin
quokka
	kangeroo
	wombat
	echidna


kangeroo doesnt exist
wombat and echidna add to sudo

To add
wallaby
	koala
	opossum
	tasmaniandevil
	platypus*
	eudyptula_minor* 
	kookaburra
	emu
	cane_toad

Marsupial

wombat
wallaby
kangeroo
koala
opossum
tasmaniandevil
quokka
eudyptula_minor [penguin]

platypus

birds
kookaburra
emu

echidna

cane toad


REMOVE john aide
critical service falkon

NOT
orangutan
sunbear
kiwi
kakapo
