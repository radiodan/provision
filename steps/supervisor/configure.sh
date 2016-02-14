mkdir -pv /etc/supervisor/conf.d/ && \
  cp -v ${RADIODAN_CONF}/general /etc/supervisor/conf.d/general.conf && \
  npm install -g foreman && \
  cp -v ${RADIODAN_CONF}/radiodan-default-app /usr/local/bin/radiodan-default-app && \
  chmod +x /usr/local/bin/radiodan-default-app && \
  radiodan-default-app skeleton
