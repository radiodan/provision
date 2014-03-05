## Radiodan setup steps

# extract installation files
  RADIODAN_FS=/tmp/radiodan-setup
  
  mkdir -p ${RADIODAN_FS} && \
    curl -L https://github.com/pixelblend/provision/archive/master.tar.gz | tar xz --strip-components 1 -C ${RADIODAN_FS}

# clean up distro
  apt-get update && \
    apt-get purge -y x11-common lxde midori scratch && \
    apt-get autoremove -y

# remove x11 stuff
  update-rc.d -f x11-common remove

# update firmware
  apt-get install -y rpi-update && rpi-update

# Upstart
  yes 'Yes, do as I say!' | apt-get -y --force-yes install upstart

# TODO: Add speed hacks inc. tmpfs
  cp ${RADIODAN_FS}/prepare-dirs /etc/init.d/prepare-dirs && \
    chmod +x /etc/init.d/prepare-dirs && \
    update-rc.d prepare-dirs defaults 01 99

# TODO: Hostname setting

# install radiodan essentials, stop mpd from loading on boot
  apt-get install -y alsa-utils mpd mpc vim rabbitmq-server && \
    update-rc.d -f mpd remove

# samba && share music
  apt-get install -y samba avahi-daemon && \
    mkdir /media/music && chmod 777 -R /media/music && \
    mkdir -p /opt/radiodan && chown 755 -R /opt/radiodan

   cp ${RADIODAN_FS}/smb.conf /etc/samba/smb.conf && \
    service samba restart

# wpa_cli
  apt-get install -y ruby1.9.3 && \
    gem install --no-ri --no-rdoc wpa_cli_web
  
  cp ${RADIODAN_FS}/wpa-cli-web.conf /etc/init/wpa-cli-web.conf
  
  apt-get install -y dnsmasq && \
    cp ${RADIODAN_FS}/dnsmasq.conf /etc/dnsmasq.d/dnsmasq.conf &&
    update-rc.d -f dnsmasq remove
    
  apt-get install -y hostapd wpasupplicant && \
    update-rc.d -f hostapd remove && \
    cp ${RADIODAN_FS}/hostapd.conf /etc/hostapd/hostapd.conf && \
    cp ${RADIODAN_FS}/interfaces /etc/network/interfaces && \
    cp ${RADIODAN_FS}/rc.local /etc/rc.local && \
    mkdir -p /opt/radiodan/adhoc && \
    chmod 755 -R /opt/radiodan/adhoc && \
    cp ${RADIODAN_FS}/try_adhoc_network /opt/radiodan/adhoc/try_adhoc_network && \
    chmod +x /opt/radiodan/adhoc/try_adhoc_network && \
    cp ${RADIODAN_FS}/wpa-conf-copier.conf /etc/init/wpa-conf-copier.conf && \
    cp ${RADIODAN_FS}/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf && \
    cp ${RADIODAN_FS}/wpa_supplicant.conf /boot/wpa_supplicant.txt

# nginx
  apt-get install -y nginx && \
    cp ${RADIODAN_FS}/wpa_cli_web_redirect /etc/nginx/sites-available/wpa_cli_web_redirect && \
    cp ${RADIODAN_FS}/status511.html /opt/radiodan/adhoc/status511.html && \
    chown 755 /opt/radiodan/adhoc/status511.html &&
    rm /etc/nginx/sites-enabled/default
  
# nodejs
  mkdir -p /opt/node && \
    $(curl -L http://nodejs.org/dist/v0.10.24/node-v0.10.24-linux-arm-pi.tar.gz | tar xz --strip-components 1 -C /opt/node) && \
  echo 'PATH="/opt/node/bin:$PATH"' >> /etc/profile

# radiodan apps
  git clone https://github.com/radiodan/radiodan.js.git /opt/radiodan/server
  git clone https://github.com/radiodan/radiodan-client.js.git /opt/radiodan/web
  
# TODO: add upstart scripts

# Tidying Up

  rm -rf ${RADIODAN_FS}
  cat /dev/null > ~/.bash_history && history -c