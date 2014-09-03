mkdir -pv /etc/monit/{conf.d,monitrc.d}/ && \
    cp -v ${RADIODAN_CONF}/radiodan /etc/monit/monitrc.d/ && \
    ln -s /etc/monit/monitrc.d/radiodan /etc/monit/conf.d/radiodan
