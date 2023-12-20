# Pada Node Aura

Aura_to_NAT_IP=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source $Aura_to_NAT_IP

# testing ping dari node lain
# terlebih dahulu pada node lain harus menjalankan perintah : echo nameserver 192.168.122.1 > /etc/resolv.conf
# lalu melakukan ping google.com