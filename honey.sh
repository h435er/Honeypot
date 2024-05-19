#Author: h435er
#A simple honeypot program
arp_output=$(exec arp -a)
expected_ip="ip"
for ip in $expected_ip; do
    if grep -q "$ip" <<< "$arp_output"; then
      echo "Gut"
    else
      echo "Eindringling!!!"
    fi
done
