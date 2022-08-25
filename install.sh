#!/bin/bash

echo -e 'Checking for Dependencies:'

for package in python3-pip; do
    if dpkg -s $package > /dev/null 2>/dev/null; then
        echo $package is installed
        else
        echo -e "$package is NOT installed!"
        apt install $package
    fi
done

echo -e 'DONE\nInstalling Python modules'
for module in pyarmor; do
    pip3 install $module
done

defaultuser=$(getent passwd 1000 | cut -d: -f 1)
echo -e "The default user is currently set to" $defaultuser
echo -e "Press [enter] to keep this user or enter a new default user:"
# read cpuser
if [ -z "$cpuser" ] ; then
    cpuser=$defaultuser
else :    
fi

defaultlocation='/home/'$cpuser'/Desktop/score.html'
echo -e "The score report location is currently set to "$defaultlocation
echo -e 'Press [enter] to keep it there or enter a new location:'
# read scorelocation
if [ -z "$scorelocation" ] ; then
    echo -e '#!usr/bin/env python3\n\nSCORE_REPORT_LOCATION = '\"$defaultlocation\" > score.py
else
    echo -e '#!usr/bin/env python3\n\nSCORE_REPORT_LOCATION = '\"$scorelocation\" > score.py
fi


echo "Building Engine..."
echo -e 's_config = """' > score.py
cat PySEL.conf >> score.py
echo -e '"""' >> score.py
cat pysel.py >> score.py

echo -e "DONE\nObfuscating pysel.py..."
pyarmor obfuscate --recursive --output /usr/local/bin/pysel/ score.py
#sed -i '1 i\from pytransform import pyarmor_runtime\npyarmor_runtime()' /usr/local/bin/pysel/score.py
chown $cpuser:$cpuser /usr/local/bin/pysel

echo -e 'DONE\nCreating /pysel-static directory...'
mkdir -p /pysel-static
cp static/*.png /pysel-static/
cp static/*.wav /pysel-static/

echo -e 'DONE\nCreating Team ID Changer...'
# chown $cpuser:$cpuser static/SetTeam.desktop
# cp static/SetTeam.desktop '/home/'$cpuser'/Desktop/'
# chmod 777 '/home/'$cpuser'/Desktop/SetTeam.desktop'
# cp static/setid.sh /pysel-static/
# chmod +x /pysel-static/setid.sh
chmod 777 /usr/local/bin/
echo 'Mensa Students' > /usr/local/bin/pysel/TEAM

echo -e 'DONE\nRegistering scoring service...'
cp static/pysel_scoring.service /etc/systemd/system/
systemctl enable pysel_scoring.service
systemctl start pysel_scoring.service

echo -e 'DONE\nInstall is complete. Would you like to backup your PySEL.conf file?(Y/n)'
# read backup
# if [ "$backup" == "n" ] || [ "$backup" == "N" ] ; then
#    echo -e 'GOOD LUCK!'
# else
#    cp PySEL.conf '/home/'$cpuser'/Desktop/'
#    echo -e "PySEL.conf has been copied to the Desktop for safe keeping. Don't forget to delete it!"
#
# fi
