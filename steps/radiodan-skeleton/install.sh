rm -rf /opt/radiodan/apps/skeleton/releases/0 && \
  mkdir -pv /opt/radiodan/apps/skeleton/releases/0 && \
  git clone https://github.com/radiodan/radiodan-skeleton  /opt/radiodan/apps/skeleton/releases/0 && \
  mkdir -pv /opt/radiodan/apps/skeleton/releases/0/node_modules && \
  npm install --prefix /opt/radiodan/apps/skeleton/releases/0/node_modules && \
  rm -f /opt/radiodan/apps/skeleton/current && \
  ln -s /opt/radiodan/apps/skeleton/releases/0 /opt/radiodan/apps/skeleton/current
