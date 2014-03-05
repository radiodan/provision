## Radiodan setup steps

# extract installation files
  RADIODAN_FS=/tmp/radiodan-setup

  mkdir -pv ${RADIODAN_FS} && \
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

  echo "Now Restart and run ./install.sh"
