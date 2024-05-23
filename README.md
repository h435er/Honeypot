# Requirements
>ntfy (an notification app)

>Linux pc/server

>Wifi/Ethernet connection
# About/Usage
This is a simple ip-scanner. you put in the ```honey.sh``` your ip addresses in there and it will ignore them while scanning. if there is anything sus, it will send you a message with ntfy

# Install
```
git clone https://github.com/h435er/Honeypot
cd Honeypot
chmod +x install.sh
./install.sh
```
While it is installing it will make open nano with a few files wgere you have to put your username and ntfy account in there.you have to put it in where it is written "CHANGE_THIS" and exit nano.
# Uninstall
run these commands and honey will be removed completely:
```
chmod +x uninstall.sh 
./uninstall.sh
```
After this, you can type 
```
cd ..
rm -rf Honeypot
```
Now it is removed completely
