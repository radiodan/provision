  chown -R pi:pi /opt/radiodan/

# Write the creation time for future reference
  echo "radiodan/provision (`date`)" > /boot/radiodan-provision-info && \
  ln -sfv /boot/radiodan-provision-info /opt/radiodan/
