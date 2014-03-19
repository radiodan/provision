## Radiodan setup steps

  RADIODAN_CONF=/home/pi/radiodan-setup/config
  RADIODAN_USER=pi

# TODO: Add speed hacks inc. tmpfs
  cp -v ${RADIODAN_CONF}/prepare-dirs /etc/init.d/prepare-dirs && \
    chmod +x /etc/init.d/prepare-dirs && \
    update-rc.d prepare-dirs defaults 01 99

# Hostname setting when /boot/hostname is written
  cp -rv ${RADIODAN_CONF}/hostname-change /etc/init.d/hostname-change && \
    chmod +x /etc/init.d/hostname-change && \
    update-rc.d hostname-change defaults 01 99

# setup funky MOTD
  cp -rv ${RADIODAN_CONF}/motd.radiodan /etc/ && \
    echo > /etc/motd && \
    cp -rv ${RADIODAN_CONF}/motd.service /etc/init.d/motd && \
    /etc/init.d/motd

# install radiodan essentials, stop mpd from loading on boot
  apt-get install -y alsa-utils mpd mpc vim rabbitmq-server && \
    update-rc.d -f mpd remove

  # add ALSA conf to set usb as default audio device
  cp -v ${RADIODAN_CONF}/alsa-base.conf /etc/modprobe.d/alsa-base.conf

# samba && share music
  apt-get install -y samba avahi-daemon && \
    mkdir /media/music && chmod 777 -R /media/music && \
    mkdir -pv /opt/radiodan && chown 755 -R /opt/radiodan

  cp -v ${RADIODAN_CONF}/smb.conf /etc/samba/smb.conf && \
    service samba restart

  cp -v ${RADIODAN_CONF}/smb.service /etc/avahi/services/smb.service && \
    cp -v ${RADIODAN_CONF}/ssh.service /etc/avahi/services/ssh.service && \
    cp -v ${RADIODAN_CONF}/http.service /etc/avahi/services/http.service && \
    service avahi-daemon restart

# wpa_cli
  apt-get install -y ruby1.9.3 && \
    gem install --no-ri --no-rdoc wpa_cli_web foreman procfile-upstart-exporter

  cp -v ${RADIODAN_CONF}/wpa-cli-web.conf /etc/init/wpa-cli-web.conf

  cp -v ${RADIODAN_CONF}/wifi-configuration.conf /etc/init/wifi-configuration.conf

  apt-get install -y dnsmasq && \
    cp -v ${RADIODAN_CONF}/dnsmasq.conf /etc/dnsmasq.d/dnsmasq.conf &&
    update-rc.d -f dnsmasq remove

  apt-get install -y hostapd wpasupplicant && \
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

# nginx
  apt-get install -y nginx && \
    cp -v ${RADIODAN_CONF}/wpa_cli_web_redirect /etc/nginx/sites-available/wpa_cli_web_redirect && \
    cp -v ${RADIODAN_CONF}/radiodan_client /etc/nginx/sites-available/radiodan_client && \
    cp -v ${RADIODAN_CONF}/status511.html /opt/radiodan/adhoc/status511.html && \
    chown 755 /opt/radiodan/adhoc/status511.html &&
    rm /etc/nginx/sites-enabled/default

# nodejs
  mkdir -pv /opt/node && \
    $(curl -L http://nodejs.org/dist/v0.10.24/node-v0.10.24-linux-arm-pi.tar.gz | tar xz --strip-components 1 -C /opt/node) && \
    ln -s /opt/node/bin/node /usr/local/bin/node && \
    ln -s /opt/node/bin/npm /usr/local/bin/npm

# WiringPi library
  rm -rf /tmp/wiringPi && \
  git clone git://git.drogon.net/wiringPi /tmp/wiringPi && \
    cd /tmp/wiringPi && \
    ./build

# radiodan apps
    curl -L https://github.com/radiodan/radiodan.js/releases/download/v0.2.0/radiodan-server.tar.gz | tar xz -C /opt/radiodan/ && \
      curl -L https://github.com/radiodan/client_web_example/releases/download/v0.1.0/radiodan-web.tar.gz | tar xz -C /opt/radiodan/ && \
      /opt/node/bin/npm -g install forever && \
      cp -v ${RADIODAN_CONF}/radiodan-config.json /opt/radiodan/server/config.json && \
      cp -v ${RADIODAN_CONF}/radiodan-server.conf /etc/init && \
      cp -v ${RADIODAN_CONF}/radiodan-web.conf /etc/init


# Install physical UI
  mkdir -p /opt/radiodan/physical-ui/ && \
    curl -L https://github.com/radiodan/physical-ui/releases/download/v0.0.1/physical-ui.tar.gz | tar xz --strip-components 1 -C /opt/radiodan/physical-ui && \
    cp -v ${RADIODAN_CONF}/radiodan-physical-ui.conf /etc/init

# Tidying Up

  # cat /dev/null > ~/.bash_history && history -c
