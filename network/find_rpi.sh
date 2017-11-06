#!/bin/bash
# basically
sudo nmap -sP 192.168.1.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}'
# when connected from shared wifi connexion on my mac
sudo nmap -sP 192.168.2.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}' 