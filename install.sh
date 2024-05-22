#Author: h435er
echo """


 _                              _           _        _ _ 
| |__   ___  _ __   ___ _   _  (_)_ __  ___| |_ __ _| | |
|  _ \ / _ \|  _ \ / _ \ | | | | |  _ \/ __| __/ _  | | |
| | | | (_) | | | |  __/ |_| | | | | | \__ \ || (_| | | |
|_| |_|\___/|_| |_|\___|\__, | |_|_| |_|___/\__\__,_|_|_|
                        |___/                            



 
"""

echo "MOVING THE SERVICE FILE TO  /etc/systemd/system/ ..."
sudo mv honey.service /etc/systemd/system/
echo "MOVING THE PY SCRIPT IN THE HOME DIRECTORY ..."
sudo mv honey.py /home/$USER/
echo "MOVING THE SHELL SCRIPT IN THE HOME DIRECTORY ..."
sudo mv honey.sh /home/$USER/
cd
echo "MARK THE SHELL SCRIPT AS EXECUTABLE ..."
chmod +x honey.sh
echo "NOW PLACE YOUR USERNAME IN THE EXECSTART LINE"
sleep 5
sudo nano /etc/systemd/system/honey.service
echo 'NOW PLACE YOUR NTFY ACCOUNT SUBSCRIPTION THERE'
sleep 5
sudo nano /home/$USER/honey.sh
echo "ENABLE AND START HONEY SERVICE ..."
sudo systemctl enable --now honey
echo """



 _           _        _ _     ___                      _      _           _ 
(_)_ __  ___| |_ __ _| | |   / __\___  _ __ ___  _ __ | | ___| |_ ___  __| |
| |  _ \/ __| __/ _  | | |  / /  / _ \|  _   _ \|  _ \| |/ _ \ __/ _ \/ _  |
| | | | \__ \ || (_| | | | / /__| (_) | | | | | | |_) | |  __/ ||  __/ (_| |
|_|_| |_|___/\__\__,_|_|_| \____/\___/|_| |_| |_| .__/|_|\___|\__\___|\__,_|
                                                |_|                         


                                  

"""
echo "YOU CAN ADD IP ADDRESSES IN THE /home/$USER/honey.sh FILE"

