mkdir -pv /opt/radiodan/adhoc/
cp -v ${RADIODAN_CONF}/wpa_cli_web_redirect /etc/nginx/sites-available/wpa_cli_web_redirect
cp -v ${RADIODAN_CONF}/radiodan_client /etc/nginx/sites-available/radiodan_client
cp -v ${RADIODAN_CONF}/status511.html /opt/radiodan/adhoc/status511.html
chown 755 /opt/radiodan/adhoc/status511.html
rm -vf /etc/nginx/sites-enabled/default
