## Radiodan setup steps

# extract installation files
  RADIODAN_FS=/home/pi/radiodan-setup

  mkdir -pv ${RADIODAN_FS} && \
    curl -L https://github.com/pixelblend/provision/archive/master.tar.gz | tar xz --strip-components 1 -C ${RADIODAN_FS}

# create .ssh dir to place authorised_keys later
  mkdir -pv /home/pi/.ssh

# clean up distro
  apt-get update

# remove unneeded stuff
  apt-get purge -y lxde midori scratch && \
    apt-get autoremove -y

# upgrade remaining packages
  apt-get upgrade -y

# update firmware
  apt-get install -y rpi-update && rpi-update

# Upstart
  yes 'Yes, do as I say!' | apt-get -y --force-yes install upstart

  echo "Now Restart and run install.sh"
