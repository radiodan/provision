# All requests to port 80 go to port 5000
mkdir -p /etc/iptables/ && \
  iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 5000 && \
  iptables -t nat -I OUTPUT -p tcp -o lo --dport 80 -j REDIRECT --to-ports 5000 && \
  iptables-save > /etc/iptables/rules.v4
