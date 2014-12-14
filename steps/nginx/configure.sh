mkdir -pv /opt/radiodan/static/
cp -v ${RADIODAN_CONF}/wpa_cli_web_redirect /etc/nginx/sites-available/wpa_cli_web_redirect
cp -v ${RADIODAN_CONF}/radiodan_client /etc/nginx/sites-available/radiodan_client
cp -v ${RADIODAN_CONF}/status511.html /opt/radiodan/static/status511.html
cp -v ${RADIODAN_CONF}/radiodan404.html /opt/radiodan/static/radiodan404.html
chown 755 /opt/radiodan/static/status511.html
rm -vf /etc/nginx/sites-enabled/default
