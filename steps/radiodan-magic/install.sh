mkdir -pv /opt/radiodan/apps/magic/releases/0 && \
  cp -v ${RADIODAN_CONF}/deploy /opt/radiodan/apps/magic/releases/0/.deploy && \
  rm -f /opt/radiodan/apps/magic/current && \
  ln -s /opt/radiodan/apps/magic/releases/0 /opt/radiodan/apps/magic/current
