# rpi-utlis
## Init SD-Card

Those files must be copied on SD_Card (mounted as /boot)
 - ssh (empty file to allow ssh)
 - wpa_supplicant.conf (to auto-connect your wifi network)

## Network finder

To find Raspberry on your LAN, even if it's connected from a shared WIFI connexion from your MAC

	sh find_rpi.sh

## Secure ssh connection

From your client (MacOs / Linux) :

### Check if you have a ssh-key 

	ls ~/.ssh/

You must see something like **id_rsa** and **id_rsa.pub**

**if not, just follow the command below**
	ssh-keygen

### Copy your key to your Raspberry

	ssh-copy-id pi@[raspberry_ip_adress]

and type your password.

### Connect

	ssh pi@[raspberry_ip_adress]

** No password will be prompted **

### Change your "root" password

	passwd

### Disallow ssh connexion with password

	nano /etc/ssh/sshd_config

and replace **#PermitRootLogin prohibit-password** by **PermitRootLogin without-password**



