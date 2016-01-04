mkdir -pv /media/music && chmod 777 -R /media/music
mkdir -pv /opt/radiodan && chown 755 -R /opt/radiodan

cp -v ${RADIODAN_CONF}/smb.conf /etc/samba/smb.conf
service smbd restart

/usr/bin/yes pi | smbpasswd -a -s pi
service smbd restart

