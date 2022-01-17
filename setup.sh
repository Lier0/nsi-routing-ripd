# = sys =
sed "s/#net\.ipv4\.ip_forward/net.ipv4.ip_forward/g" -i /etc/sysctl.conf
sysctl -p

# = apt =
apt-get update
apt-get install -y quagga

# = etc =
cp /usr/share/doc/quagga-core/examples/zebra.conf.sample /etc/quagga/zebra.conf
service zebra restart
cat << EOF > /etc/quagga/ripd.conf
hostname ripd
password zebra
log stdout
!
router rip
 version 2
 redistribute connected
!
line vty
!
EOF
service ripd restart
