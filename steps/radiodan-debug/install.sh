mkdir -pv /opt/radiodan/apps/debug/releases/0 && \
  cp -v ${RADIODAN_CONF}/deploy /opt/radiodan/apps/debug/releases/0/.deploy && \
  rm -f /opt/radiodan/apps/debug/current && \
  ln -s /opt/radiodan/apps/debug/releases/0 /opt/radiodan/apps/debug/current
