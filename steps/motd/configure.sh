  cp -rv ${RADIODAN_CONF}/motd.radiodan /etc/ && \
    echo > /etc/motd && \
    cp -rv ${RADIODAN_CONF}/motd.service /etc/init.d/motd && \
    /etc/init.d/motd
