mkdir -p /etc/connman && \
  cp ${RADIODAN_CONF}/connman-main.conf /etc/connman/main.conf && \
  systemctl stop bind9.service && \
  systemctl disable bind9.service && \
  chown root /etc/bind/rndc.key && \
  cp -v /opt/radiodan/wifi-connect/assets/bind/* /etc/bind/ && \
  mkdir -p /data && \
  cp -v ${RADIODAN_CONF}/interfaces /etc/network/interfaces && \
  cp -v ${RADIODAN_CONF}/connman.service /etc/systemd/system/connman.service && \
  cp -v ${RADIODAN_CONF}/wifi-connect.service /etc/systemd/system/wifi-connect.service && \
  chmod +x /opt/radiodan/wifi-connect/start && \
  systemctl enable wifi-connect && \
  cp -rv ${RADIODAN_CONF}/forget-wifi-networks /usr/local/bin/forget-wifi-networks && \
    chmod +x /usr/local/bin/forget-wifi-networks
