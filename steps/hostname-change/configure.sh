  cp -rv ${RADIODAN_CONF}/hostname-change /etc/init.d/hostname-change && \
    chmod +x /etc/init.d/hostname-change && \
    update-rc.d hostname-change defaults 01 99
