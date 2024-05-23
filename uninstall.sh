#Author: h435er
echo " UNINSTALLING HONEY ..."
sudo systemctl disable --now honey
sudo rm /etc/systemd/system/honey.service
sudo rm /home/$USER/honey.py
sudo rm /home/$USER/honey.sh
echo "UNINSTALL COMPLETED!"
