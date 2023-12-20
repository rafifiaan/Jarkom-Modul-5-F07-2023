# Pada node DHCP Server Revolte

apt-get update
apt-get install isc-dhcp-server -y
dhcpd --version

echo '
# Defaults for isc-dhcp-server (sourced by /etc/init.d/isc-dhcp-server)

# Path to dhcpd'\''s config file (default: /etc/dhcp/dhcpd.conf).
#DHCPDv4_CONF=/etc/dhcp/dhcpd.conf
#DHCPDv6_CONF=/etc/dhcp/dhcpd6.conf

# Path to dhcpd'\''s PID file (default: /var/run/dhcpd.pid).
#DHCPDv4_PID=/var/run/dhcpd.pid
#DHCPDv6_PID=/var/run/dhcpd6.pid

# Additional options to start dhcpd with.
#       Don'\''t use options -cf or -pf here; use DHCPD_CONF/ DHCPD_PID instead
#OPTIONS=""

# On what interfaces should the DHCP server (dhcpd) serve DHCP requests?
#       Separate multiple interfaces with spaces, e.g. "eth0 eth1".
INTERFACES="eth0"
' > /etc/default/isc-dhcp-server

echo '
# A1 ke GrobeForest
subnet 10.55.4.0 netmask 255.255.252.0 {
    range 10.55.4.3 10.55.7.254; # range ip untuk GrobeForest
    option routers 10.55.4.1; # ip gateway ke subnet A1 (Heiter-eth2)
    option broadcast-address 10.55.7.255; # broadcast ID subnet A1
    option domain-name-servers 10.55.0.18; # ip dns server Richter-eth0
    default-lease-time 180; # 3 menit
    max-lease-time 5760; # 96 menit
}

# A2 ke TurkRegion
subnet 10.55.8.0 netmask 255.255.248.0 {
    range 10.55.8.2 10.55.15.254; # range ip untuk TurkRegion
    option routers 10.55.8.1; # ip gateway ke subnet A2 (Heiter-eth1)
    option broadcast-address 10.55.15.255; # broadcast ID subnet A2
    option domain-name-servers 10.55.0.18; # ip dns server Richter-eth0
    default-lease-time 180; # 3 menit
    max-lease-time 5760; # 96 menit
}

# A3
subnet 10.55.0.0 netmask 255.255.255.252 {
}

# A4
subnet 10.55.0.4 netmask 255.255.255.252 {
}

# A5
subnet 10.55.0.8 netmask 255.255.255.252 {
}

# A6
subnet 10.55.0.12 netmask 255.255.255.252 {
}

# A7 ke LaubHills
subnet 10.55.2.0 netmask 255.255.254.0 {
    range 10.55.2.2 10.55.3.254; # range ip untuk LaubHills
    option routers 10.55.2.1; # ip gateway ke subnet A7 (Himmel-eth1)
    option broadcast-address 10.55.3.255; # broadcast ID subnet A7
    option domain-name-servers 10.55.0.18; # ip dns server Richter-eth0
    default-lease-time 180; # 3 menit
    max-lease-time 5760; # 96 menit
}

# A8 ke SchwerMountain
subnet 10.55.0.128 netmask 255.255.255.128 {
    range 10.55.0.130 10.55.0.254; # range ip untuk SchwerMountain
    option routers 10.55.0.129; # ip gateway ke subnet A8 (Himmel-eth2)
    option broadcast-address 10.55.0.255; # broadcast ID subnet A8
    option domain-name-servers 10.55.0.18; # ip dns server Richter-eth0
    default-lease-time 180; # 3 menit
    max-lease-time 5760; # 96 menit
}

# A9
subnet 10.55.0.16 netmask 255.255.255.252 {
}

# A10
subnet 10.55.0.20 netmask 255.255.255.252 {
}

' > /etc/dhcp/dhcpd.conf


service isc-dhcp-server restart


