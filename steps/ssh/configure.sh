mkdir -pv /home/pi/.ssh && \
  cat ${RADIODAN_CONF}/id_radiodan.pub >> /home/pi/.ssh/authorized_keys && \
  chown pi:pi /home/pi/.ssh/authorized_keys && \
  chmod 600 /home/pi/.ssh/authorized_keys
