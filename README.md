# What you need
>ntfy (an notification app)

>Linux pc/server
# About/Usage
This is a simple ip-scanner. you put in the ```honey.sh``` your ip addresses in there and it will ignore them while scanning. if there is anything sus, it will send you a message with ntfy

# Install
```
git clone https://github.com/h435er/Honeypot
cd Honeypot
chmod +x install.sh
./install.sh
```
While it is installing it will make open nano with the ```honey.service``` file. put your hostname in there where it is written "CHANGE_THIS" and exit nano
# Uninstall
run these commands and honey will be removed completely:
```
chmod +x uninstall.sh 
./uninstall.sh```
