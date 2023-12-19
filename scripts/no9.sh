# Pada node Web Server Sein dan Stark

# iptables -F

# Membuat rantai iptables baru yang disebut "scan_port"
iptables -N scan_port

# Melakukan pengecekan dan blokir jika terdapat lebih dari 20 pemindaian port dari alamat IP yang sama dalam waktu kurang dari 10 menit
# serta menentukan jumlah pemindaian port yang diizinkan dalam periode waktu yang telah ditentukan yaitu 20.
iptables -A INPUT -m recent --name scan_port --update --seconds 600 --hitcount 20 -j DROP
iptables -A FORWARD -m recent --name scan_port --update --seconds 600 --hitcount 20 -j DROP

# Menerima Pemindaian Baru
# Jika alamat IP pemindainya (IP yang melakukan scanning port) baru harus ditambahkan ke dalam "recent" list dan paket akan diterima (ACCEPT).
iptables -A INPUT -m recent --name scan_port --set -j ACCEPT
iptables -A FORWARD -m recent --name scan_port --set -j ACCEPT

# testing dapat dilakukan dengan ping
# Lakukan ping terhadap IP Sein dan/atau Stark di Client
