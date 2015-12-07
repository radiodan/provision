apt-get install -y --force-yes dnsmasq && \
  apt-get install -y --force-yes ruby2.1-dev && \
  curl -O http://old-releases.ubuntu.com/ubuntu/pool/universe/w/wpa/hostapd_1.0-3ubuntu2.1_armhf.deb && \
  sudo dpkg -i hostapd_1.0-3ubuntu2.1_armhf.deb && \
  apt-get install -y --force-yes wpasupplicant && \
  gem install --no-ri --no-rdoc wpa_cli_web

