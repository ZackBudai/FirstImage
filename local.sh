#!/bin/bash
cd /usr/local/bin
sudo mkdir pysel
cd pysel
sudo mkdir Event_checks 
sudo mv /home/ubuntu/partial3/score.py /usr/local/bin/pysel/ 
sudo mv /home/ubuntu/partial3/pysel.py /usr/local/bin/pysel/ 
sudo mv /home/ubuntu/partial3/Event_checks/* /usr/local/bin/pysel/Event_checks/ 
cd /home/ubuntu/partial3
sudo ./inject.sh -y -qq
sudo ./install.sh -y -qq
