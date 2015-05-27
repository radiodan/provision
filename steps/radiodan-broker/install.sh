mkdir -pv /opt/radiodan/apps/broker/releases/0 && \
  cp -v ${RADIODAN_CONF}/deploy /opt/radiodan/apps/broker/releases/0/.deploy && \
  ln -sf /opt/radiodan/apps/broker/releases/0 /opt/radiodan/apps/broker/current
