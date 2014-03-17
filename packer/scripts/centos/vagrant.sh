# get ready for vagrant
echo -n "Adding vagrant public key..."
mkdir /home/vagrant/.ssh
curl -k -o /home/vagrant/.ssh/authorized_keys \
    'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
echo "done"