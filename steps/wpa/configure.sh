  cp -v ${RADIODAN_CONF}/wpa-cli-web.conf /etc/init/wpa-cli-web.conf

  cp -v ${RADIODAN_CONF}/wifi-configuration.conf /etc/init/wifi-configuration.conf

    update-rc.d -f dnsmasq remove && \
    cp -v ${RADIODAN_CONF}/dnsmasq.conf /etc/dnsmasq.d/dnsmasq.conf

    update-rc.d -f hostapd remove && \
    cp -v ${RADIODAN_CONF}/hostapd.conf /etc/hostapd/hostapd.conf && \
    cp -v ${RADIODAN_CONF}/interfaces /etc/network/interfaces && \
    cp -v ${RADIODAN_CONF}/rc.local /etc/rc.local && \
    mkdir -pv /opt/radiodan/adhoc && \
    chmod 755 -R /opt/radiodan/adhoc && \
    cp -v ${RADIODAN_CONF}/try_adhoc_network /opt/radiodan/adhoc/try_adhoc_network && \
    chmod +x /opt/radiodan/adhoc/try_adhoc_network && \
    cp -v ${RADIODAN_CONF}/wpa-conf-copier.conf /etc/init/wpa-conf-copier.conf && \
    cp -v ${RADIODAN_CONF}/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf && \
    cp -v ${RADIODAN_CONF}/wpa_supplicant.conf /boot/wpa_supplicant.txt

