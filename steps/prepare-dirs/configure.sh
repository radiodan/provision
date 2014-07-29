  cp -v ${RADIODAN_CONF}/prepare-dirs /etc/init.d/prepare-dirs && \
    chmod +x /etc/init.d/prepare-dirs && \
    update-rc.d prepare-dirs defaults 01 99
