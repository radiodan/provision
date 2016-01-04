mkdir -pv /opt/radiodan/apps/skeleton/releases/0 && \
  cp -v ${RADIODAN_CONF}/deploy /opt/radiodan/apps/skeleton/releases/0/.deploy && \
  rm -f /opt/radiodan/apps/skeleton/current && \
  ln -s /opt/radiodan/apps/skeleton/releases/0 /opt/radiodan/apps/skeleton/current
