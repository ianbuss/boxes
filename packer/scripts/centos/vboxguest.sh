# install guest additions
echo -n "Installing VBoxGuestAdditions..."
mkdir /tmp/vbox
VER=$(cat /home/vagrant/.vbox_version)
mount -o loop /home/vagrant/VBoxGuestAdditions.iso /tmp/vbox 
if [[ $? == 0 ]]; then 
  sh /tmp/vbox/VBoxLinuxAdditions.run
  umount /tmp/vbox
  rmdir /tmp/vbox
  rm /home/vagrant/*.iso
  echo "done"
else
  echo "failed"
fi