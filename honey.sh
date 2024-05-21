#Author: h435er
#A simple honeypot program
arp_output=$(exec arp -a)
expected_ip=("ip1" "ip3" "ip3")
for ip in $expected_ip; do
    if grep -q "$ip" <<< "$arp_output"; then
      echo "Allright" >> log.txt
    else
      curl -d "INVADER" ntfy.sh/honey
      echo "INVADER" >> log.txt
    fi
done
