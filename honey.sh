#Author: h435er
#A simple honeypot program
arp_output=$(exec arp -a)
expected_ip="ip"
for ip in $expected_ip; do
    if grep -q "$ip" <<< "$arp_output"; then
      echo "Alles Gut" >> log.txt
    else
      curl -d "EINDRINGLING!!!!!" ntfy.sh/honey
      echo "EINDRINGLING!!!!" > log.txt
    fi
done
