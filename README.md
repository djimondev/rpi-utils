# rpi-utlis
## Install RPI_UTILS

**Install to your pi**

	ssh pi@[raspberry_ip_adress]
	cd
	git clone https://github.com/djimondev/rpi-utlis.git

**Install on your MAC/Linux PC**

	cd
	git clone https://github.com/djimondev/rpi-utlis.git

## Init SD-Card

Those files must be copied on SD_Card (mounted as /boot)
 - ssh (empty file to allow ssh)
 - wpa_supplicant.conf (to auto-connect your wifi network)

## Network finder

To find Raspberry on your LAN, even if it's connected from a shared WIFI connexion from your MAC

**On your MAC/Linux PC**
	sh find_rpi.sh

## Secure ssh connection

### Check if you have a ssh-key 

**On your MAC/Linux PC**
	ls ~/.ssh/

You must see something like **id_rsa** and **id_rsa.pub**

**if not, just follow the command below**
	ssh-keygen

### Copy your key to your Raspberry

**On your MAC/Linux PC**
	ssh-copy-id pi@[raspberry_ip_adress]

and type your password.

### Connect

**On your MAC/Linux PC**
	ssh pi@[raspberry_ip_adress]

** No password will be prompted **

### Change your "root" password

**On your Raspberry**
	passwd

### Disallow ssh connexion with password

**On your Raspberry**
	nano /etc/ssh/sshd_config

and replace **#PermitRootLogin prohibit-password** by **PermitRootLogin without-password**

## prerequisites for Sense hat

**On your Raspberry**
	sudo sh ~/rpi-utlis/sense_hat/first_setup.sh



