mkdir -pv /opt/radiodan/apps/server/releases/0 && \
  cp -v ${RADIODAN_CONF}/deploy /opt/radiodan/apps/server/releases/0/.deploy && \
  rm -f /opt/radiodan/apps/server/current && \
  ln -s /opt/radiodan/apps/server/releases/0 /opt/radiodan/apps/server/current