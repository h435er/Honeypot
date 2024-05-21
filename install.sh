#Author: h435er
echo """

 INSTALLING HONEY
 
"""

echo "moving the service file to /etc/systemd/system/ ..."
sudo mv honey.service /etc/systemd/system/
echo "moving the py script in the home directory ..."
sudo mv honey.py /home/$USER/
echo "moving the shell script in the home directory ..."
sudo mv honey.sh /home/$USER/
cd
echo "mark the shell script as executable ..."
chmod +x honey.sh
echo "starting honey service ..."
sudo systemctl enable --now honey
echo """



INSTALLATION COMPLETED
                                                           

"""

