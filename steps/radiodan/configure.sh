
cd /opt/radiodan/apps/skeleton && \
  npm install --production && \
  ./node_modules/.bin/nf export --type supervisord --app radiodan --out /etc/supervisor/conf.d/ --cwd /opt/radiodan/apps/skeleton
