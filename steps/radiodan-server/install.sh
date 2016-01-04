rm -rf /opt/radiodan/apps/server/releases/0  && \
  mkdir -pv /opt/radiodan/apps/server/releases/0 && \
  git clone https://github.com/radiodan/radiodan.js  /opt/radiodan/apps/server/releases/0 && \
  mkdir -pv /opt/radiodan/apps/server/releases/0/node_modules && \
  npm install --prefix /opt/radiodan/apps/server/releases/0/node_modules && \
  rm -f /opt/radiodan/apps/server/current && \
  ln -s /opt/radiodan/apps/server/releases/0 /opt/radiodan/apps/server/current
