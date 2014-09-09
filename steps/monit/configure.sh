mkdir -pv /etc/monit/conf.d/ && \
    mkdir -pv /etc/monit/monitrc.d/ && \
    cp -v ${RADIODAN_CONF}/general /etc/monit/monitrc.d/ && \
    cp -v ${RADIODAN_CONF}/radiodan-example /etc/monit/monitrc.d/ && \
    cp -v ${RADIODAN_CONF}/radiodan-magic /etc/monit/monitrc.d/ && \
    ln -sf /etc/monit/monitrc.d/general /etc/monit/conf.d/general && \
    ln -sf /etc/monit/monitrc.d/radiodan-magic /etc/monit/conf.d/radiodan-magic && \
    cp -v ${RADIODAN_CONF}/radiodan-device-type /usr/local/bin/