apt-get install -y --force-yes dnsmasq && \
  apt-get install -y hostapd wpasupplicant && \
  apt-get install -y ruby1.9.3 ruby-dev && \
  gem install --no-ri --no-rdoc wpa_cli_web foreman procfile-upstart-exporter
