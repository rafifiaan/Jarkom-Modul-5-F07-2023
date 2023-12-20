# Pada node DHCP Relay Himmel (LaubHills dan SchwerMountain) dan Heiter (TurkRegion dan GrobeForest)

apt-get update
apt-get install isc-dhcp-relay -y
service isc-dhcp-relay start

echo '
SERVERS="10.55.0.22" # IP DHCP Server Revolte-eth0
INTERFACES="eth0 eth1 eth2" # add eth0 as well to prevent failure
OPTIONS=""
' > /etc/default/isc-dhcp-relay

echo 'net.ipv4.ip_forward=1' > /etc/sysctl.conf

service isc-dhcp-relay restart
