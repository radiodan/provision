mkdir -pv /opt/radiodan/apps/updater/releases/0 && \
  curl -L http://deploy.radiodan.net/releases/radiodan/updater/master | tar xz -C /opt/radiodan/apps/updater/releases/0 && \
  ln -sf /opt/radiodan/apps/updater/current/updater /usr/local/bin && \
  rm -f /opt/radiodan/apps/updater/current && \
  ln -sf /opt/radiodan/apps/updater/releases/0 /opt/radiodan/apps/updater/current && \
  mkdir -pv /opt/radiodan/updates/manifests && \
  mkdir -pv /opt/radiodan/updates/downloads