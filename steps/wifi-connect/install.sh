mkdir -p /var/cache/apt/archives/ && \
  cp ${RADIODAN_CONF}/files/connman_1.21-1.2_armhf.deb-pi1 /var/cache/apt/archives/ && \
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
  git clone https://github.com/resin-io/resin-wifi-connect.git /opt/radiodan/wifi-connect && \
  cd resin-wifi-connect/ && \
  JOBS=MAX npm install --production && \
  /opt/radiodan/wifi-connect/node_modules/.bin/bower install && \
  /opt/radiodan/wifi-connect/node_modules/.bin/coffee -c ./src
