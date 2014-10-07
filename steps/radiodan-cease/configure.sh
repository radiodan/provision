cp -v ${RADIODAN_CONF}/radiodan-cease /etc/init.d && \
  update-rc.d radiodan-cease start 20 2 3 4 5 . && \
  /etc/init.d/radiodan-cease
