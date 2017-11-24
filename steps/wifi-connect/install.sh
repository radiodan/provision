INSTALL_UI_DIR=/usr/local/share/wifi-connect/ui
RELEASE_URL="https://api.github.com/repos/radiodan/wifi-connect-ui/releases/latest"

download_regex='browser_download_url": "\K.*\.tar\.gz'

curl https://raw.githubusercontent.com/resin-io/resin-wifi-connect/master/scripts/raspbian-install.sh | bash -s -- -y && \
  download_url=$(curl "$RELEASE_URL" -s | grep -hoP "$download_regex") && \
  download_dir=$(mktemp -d) && \
  curl -Ls "$download_url" | tar -xz --strip-components 1 -C "$download_dir" && \
  rm -r $INSTALL_UI_DIR && \
  mkdir -p $INSTALL_UI_DIR && \
  mv $download_dir/* $INSTALL_UI_DIR
