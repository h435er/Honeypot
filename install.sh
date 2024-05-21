#Author: h435er
echo """

  _    _                          _____           _        _ _ 
 | |  | |                        |_   _|         | |      | | |
 | |__| | ___  _ __   ___ _   _    | |  _ __  ___| |_ __ _| | |
 |  __  |/ _ \| '_ \ / _ \ | | |   | | | '_ \/ __| __/ _` | | |
 | |  | | (_) | | | |  __/ |_| |  _| |_| | | \__ \ || (_| | | |
 |_|  |_|\___/|_| |_|\___|\__, | |_____|_| |_|___/\__\__,_|_|_|
                           __/ |                               
                          |___/                                

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



 _____          _        _ _  ______ _       _     _              _ 
|_   _|        | |      | | | |  ___(_)     (_)   | |            | |
  | | _ __  ___| |_ __ _| | | | |_   _ _ __  _ ___| |__   ___  __| |
  | ||  _ \/ __| __/ _ | | | |  _| | |  _ \| / __|  _ \ / _ \/ _   |
 _| || | | \__ \ || (_| | | | | |   | | | | | \__ \ | | |  __/ (_| |
 \___/_| |_|___/\__\__,_|_|_| \_|   |_|_| |_|_|___/_| |_|\___|\__,_|
                                                                    
                                                                    

                                                           

"""

