cp -v ${RADIODAN_CONF}/radiodan-buttons /etc/init.d && \
  update-rc.d radiodan-buttons defaults && \
  cp -v /opt/radiodan/magic/config/physical-ui-config.json.example /opt/radiodan/magic/config/physical-ui-config.json
