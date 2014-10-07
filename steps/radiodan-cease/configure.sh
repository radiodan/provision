cp -v ${RADIODAN_CONF}/radiodan-cease /etc/init.d && \
  update-rc.d radiodan-cease defaults && \
  /etc/init.d/radiodan-cease
