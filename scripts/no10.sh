# Batas/Limit jumlah log yang bisa dilakukan dalam 1 waktu yaitu 10 dengan 1 log/s

iptables -A INPUT  -j LOG --log-level debug --log-prefix 'Package Dropped' -m limit --limit 1/second --limit-burst 10