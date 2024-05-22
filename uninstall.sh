#Author: h435er
echo " uninstalling honey ..."
sudo systemctl disable --now honey
sudo rm /etc/systemd/system/honey.service
sudo rm /home/$USER/honey.py
sudo rm /home/$USER/honey.sh
echo "uninstall complete!"
