rm -rfv /tmp/wiringPi && \
  mkdir -pv /tmp/wiringPi && \
  curl "https://git.drogon.net/?p=wiringPi;a=snapshot;h=master;sf=tgz" | tar xz --strip-components 1 -C /tmp/wiringPi && \
  cd /tmp/wiringPi && \
  ./build && \
  rm -rfv /tmp/wiringPi
