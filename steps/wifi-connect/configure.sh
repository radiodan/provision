mkdir /etc/connman && \
  cp ${RADIODAN_CONF}/files/connman-main.conf /etc/connman/main.conf && \
  systemctl stop bind9.service && \
  systemctl disable bind9.service && \
  chown root /etc/bind/rndc.key && \
  cp /opt/radiodan/wifi-connect/assets/bind/* /etc/bind/ && \
  mkdir /data && \
  cp -v ${RADIODAN_CONF}/interfaces /etc/network/interfaces && \
  cp -v ${RADIODAN_CONF}/connman.service /etc/systemd/system/connman.service && \
  chmod +x /opt/radiodan/wifi-connect/start && \
  systemctl enable resin-wifi-connect
