dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

rm -rf VBoxGuestAdditions.iso

sync
chmod 777 /opt
rm -rf /opt/pkgs/*
