mkdir -p /var/cache/apt/archives/ && \
  cp -v ${RADIODAN_CONF}/connman_1.21-1.2_armhf.deb-pi1 /var/cache/apt/archives/ && \
  apt-get install -y \
      bind9 \
      bridge-utils \
      iptables \
      libdbus-1-dev \
      libexpat-dev \
      net-tools \
      usbutils \
      wireless-tools \
      connman && \
  mkdir -p /opt/radiodan && \
  rm -r /opt/radiodan/wifi-connect && \
  git clone https://github.com/resin-io/resin-wifi-connect.git /opt/radiodan/wifi-connect && \
  cd /opt/radiodan/wifi-connect/ && \
  JOBS=MAX npm install --production && \
  /opt/radiodan/wifi-connect/node_modules/.bin/bower install && \
  /opt/radiodan/wifi-connect/node_modules/.bin/coffee -c ./src
