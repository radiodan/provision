cp -v ${RADIODAN_CONF}/check-updates /etc/init.d && \
  cp -v ${RADIODAN_CONF}/check-updates /etc/cron.hourly/check-updates && \
  cp -v ${RADIODAN_CONF}/install-updates /etc/init.d && \
  update-rc.d install-updates start 20 2 3 4 5 . && \
  /opt/radiodan/apps/updater/current/updater check --workspace=/opt/radiodan/updates --target=/opt/radiodan/apps && \
  /etc/init.d/install-updates
