mkdir -pv /opt/radiodan/apps/buttons/releases/0 && \
  cp -v ${RADIODAN_CONF}/deploy /opt/radiodan/apps/buttons/releases/0/.deploy && \
  rm -f /opt/radiodan/apps/buttons/current && \
  ln -s /opt/radiodan/apps/buttons/releases/0 /opt/radiodan/apps/buttons/current
