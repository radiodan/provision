mkdir -pv /opt/radiodan/apps/cease/releases/0
curl -L http://deploy.radiodan.net/releases/radiodan/cease/master | tar xz -C /opt/radiodan/apps/cease/releases/0
ln -sf /opt/radiodan/apps/cease/releases/0 /opt/radiodan/apps/cease/current
