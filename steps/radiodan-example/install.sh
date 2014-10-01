mkdir -pv /opt/radiodan/apps/example/releases/0 && \
  cp -v ${RADIODAN_CONF}/deploy /opt/radiodan/apps/example/releases/0/.deploy && \
  rm -f /opt/radiodan/apps/example/current && \
  ln -s /opt/radiodan/apps/example/releases/0 /opt/radiodan/apps/example/current
