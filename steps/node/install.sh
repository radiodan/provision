  mkdir -pv /opt/node && \
    $(curl -L https://nodejs.org/dist/v5.10.0/node-v5.10.0-linux-armv6l.tar.gz | tar xz --strip-components 1 -C /opt/node) && \
    ln -sf /opt/node/bin/node /usr/local/bin/node && \
    ln -sf /opt/node/bin/npm /usr/local/bin/npm && \
    /opt/node/bin/npm config set prefix /usr/local
