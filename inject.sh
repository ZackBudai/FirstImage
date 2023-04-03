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
sudo DEBIAN_FRONTEND=noninteractive apt-get install -qq postfix < /dev/null > /dev/null
sudo apt install gedit -y -qq

#Add real users
sudo useradd JaguarXJR9
sudo useradd MazdaB787
sudo useradd SaleenS7
sudo useradd DMCDeLorean
sudo useradd MaclarenF1
sudo useradd BugattiVeyron
sudo useradd LamborghiniDiablo
sudo useradd PaganiZondaF
sudo useradd AudiR8


#To score if created : C4ChevyCorvetteZR1 AstonMartinVanquish MazdaFurai ToyotaAE86 NissanGTRR35 MitsuokaOrochi LamborghiniCountach MaseratiGranTurismo FerrariItalia458 MercedesAMGSLS Porsche911 ApolloEnraged

#add sudo
sudo usermod -aG sudo JaguarXJR9
sudo usermod -aG sudo PaganiZondaF


#To score if add to sudo: Chaparral2J AudiR8 Porsche911 MazdaB787
# To score if remove from sudo: PaganiZondaF

#Add unauthorized users
sudo useradd audiR8
sudo useradd apolloenraged
sudo useradd toyotakluger
sudo useradd hyundaisantafe
sudo useradd teslamodels


#create group
sudo groupadd italiancraft
sudo usermod -aG italiancraft BugattiVeyron
sudo usermod -aG italiancraft PaganiZondaF
sudo usermod -aG italiancraft FerrariItalia458

#to score if removed from italiancraft: BugattiVeyron
#to score if added to italiancraft: LamborghiniDiablo LamborghiniCountach MaseratiGranTurismo 

# to score if group added: japanesecars
# To score if added to group japanesecars: MazdaFurai ToyotaAE86 NissanGTRR35 MazdaB787 MitsuokaOrochi

#To score if group created: germanworkmanship
#To score if added to group germanworkmanship: MercedesAMGSLS Porsche911 AudiR8 ApolloEnraged


#make directories
sudo mkdir -p /home/LamborghiniDiablo/desktop/theoriginal/supercar/
sudo mkdir -p /home/PaganiZondaF/desktop/itsnotacar/itsarocket/
sudo mkdir -p /home/MazdaB787/desktop/24hour/lemans/whodrivesforthatlonganyway/
sudo mkdir -p /home/SaleenS7/desktop/american/supercar/butdriveontheleftwhy/
sudo mkdir -p /home/DMCDeLorean/desktop/backtothefuture/timemachine/



#Illegal videos
sudo echo 'isthisarealcarornot' > /home/PaganiZondaF/desktop/itsnotacar/itsarocket/.redbullx1concept.mp4
sudo echo 'quartermilestraightbutthebugattiturnslikeatank' > /home/LamborghiniDiablo/desktop/theoriginal/supercar/bugattiporschedragrace.mov

#Legalpictures
sudo echo 'everyonesayit.1.21jigawatts' > /home/DMCDeLorean/desktop/backtothefuture/timemachine/deloreantimemachine.png
sudo echo 'cambreangleaffectshowsharpthecarcanturn' > /home/SaleenS7/desktop/american/supercar/butdriveontheleftwhy/chevyzr1cambreangle.jfif


#To score if Firewall up

#create forensics questions
#Forensic 1
#Find UID of LamborghiniDiablo (1008)

Forensic 2
Decode 'alladminsarelemanswinners' text
Vigenere Cipher, key is found in another folder with chown, base64key

#forensic2 - decode final message 
sudo echo 'cwftftkymttlnpgtpzythggyu' > /home/MazdaB787/desktop/24hour/lemans/whodrivesforthatlonganyway/
#forensic 2 - decode text in file for key
sudo echo 'CLUTCH' | base64 > /home/PaganiZondaF/desktop/itsnotacar/.thekeyis
sudo chown 1006 /home/PaganiZondaF/desktop/itsnotacar/.thekeyis


#standard password change
sudo echo -e "ubuntu\nubuntu" | passwd ubuntu

# Remove APT lock files
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/lib/apt/lists/lock

# Re-enable unattended upgrades
sudo systemctl enable --now unattended-upgrades


