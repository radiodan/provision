wget -q -O - https://apt.mopidy.com/mopidy.gpg | apt-key add - && \
  wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/mopidy.list && \
  apt-get update && \
  apt-get install -y mopidy mopidy-spotify gstreamer0.10-alsa
