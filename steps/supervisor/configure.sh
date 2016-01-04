mkdir -pv /etc/supervisor/conf.d/ && \
  mkdir -pv /etc/supervisor/available/ && \
    cp -v ${RADIODAN_CONF}/general /etc/supervisor/available/general.conf && \
    cp -v ${RADIODAN_CONF}/radiodan-system /etc/supervisor/available/radiodan-system.conf && \
    cp -v ${RADIODAN_CONF}/radiodan-type-skeleton /etc/supervisor/available/radiodan-type-skeleton.conf && \
    ln -sf /etc/supervisor/available/general.conf /etc/supervisor/conf.d/ && \
    ln -sf /etc/supervisor/available/radiodan-system.conf /etc/supervisor/conf.d/ && \
    ln -sf /etc/supervisor/available/radiodan-type-skeleton.conf /etc/supervisor/conf.d/ && \
    cp -v ${RADIODAN_CONF}/radiodan-device-type /usr/local/bin/
