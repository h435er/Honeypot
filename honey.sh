  GNU nano 8.0       honey.sh
#Author: h435er
#A simple honeypot program
arp_output=$(exec arp -a)
expected_ip=("192.168.30.1" "ip3" "ip3")
for ip in $expected_ip; do
    if grep -q "$ip" <<< "$arp_output"; then
      echo "Alles Gut" >> log.txt
    else
      curl -d "EINDRINGLING!!!!!" ntfy.sh/honey
      echo "EINDRINGLING!!!!" >> log.txt
    fi
done
