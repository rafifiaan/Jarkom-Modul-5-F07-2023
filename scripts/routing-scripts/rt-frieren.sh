# Pada node Frieren

# template
# route add -net <NID subnet> netmask <netmask> gw <IP gateway>

# default
route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.55.0.5

# A7
route add -net 10.55.2.0 netmask 255.255.254.0 gw 10.55.0.14

# A8
route add -net 10.55.0.128 netmask 255.255.255.128 gw 10.55.0.14

# A9
route add -net 10.55.0.16 netmask 255.255.255.252 gw 10.55.0.14

# A10
route add -net 10.55.0.20 netmask 255.255.255.252 gw 10.55.0.14