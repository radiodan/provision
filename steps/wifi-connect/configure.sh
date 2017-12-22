cp -v ${RADIODAN_CONF}/wifi-connect.service /etc/systemd/system/wifi-connect.service && \
  systemctl enable wifi-connect && \
  cp -rv ${RADIODAN_CONF}/forget-wifi-networks /usr/local/bin/forget-wifi-networks && \
  chmod +x /usr/local/bin/forget-wifi-networks && \
  cp -rv ${RADIODAN_CONF}/start-wifi-connect /usr/local/bin/start-wifi-connect && \
  chmod +x /usr/local/bin/start-wifi-connect
