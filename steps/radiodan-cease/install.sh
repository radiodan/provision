mkdir -pv /opt/radiodan/apps/cease/releases/0 && \
  cp -v ${RADIODAN_CONF}/deploy /opt/radiodan/apps/cease/releases/0/.deploy && \
  rm -f /opt/radiodan/apps/cease/current && \
  ln -s /opt/radiodan/apps/cease/releases/0 /opt/radiodan/apps/cease/current
