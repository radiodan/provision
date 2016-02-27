dpkg -i ${RADIODAN_CONF}/connman_1.21-1.2_armhf.deb && \
  apt-get install -y -f \
      bind9 \
      bridge-utils \
      iptables \
      libdbus-1-dev \
      libexpat-dev \
      net-tools \
      usbutils \
      wireless-tools && \
  mkdir -p /opt/radiodan && \
  rm -rf /opt/radiodan/wifi-connect && \
  git clone https://github.com/radiodan/resin-wifi-connect.git /opt/radiodan/wifi-connect && \
  cd /opt/radiodan/wifi-connect/ && \
  JOBS=MAX npm install --production && \
  /opt/radiodan/wifi-connect/node_modules/.bin/bower --allow-root install && \
  /opt/radiodan/wifi-connect/node_modules/.bin/coffee -c ./src
