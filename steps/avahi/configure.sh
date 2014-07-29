  cp -v ${RADIODAN_CONF}/smb.service /etc/avahi/services/smb.service && \
    cp -v ${RADIODAN_CONF}/ssh.service /etc/avahi/services/ssh.service && \
    cp -v ${RADIODAN_CONF}/http.service /etc/avahi/services/http.service && \
    service avahi-daemon restart
