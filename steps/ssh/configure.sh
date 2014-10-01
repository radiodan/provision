mkdir -pv /home/pi/.ssh && \
  cat ${RADIODAN_CONF}/id_radiodan.pub >> /home/pi/.ssh/authorised_keys
