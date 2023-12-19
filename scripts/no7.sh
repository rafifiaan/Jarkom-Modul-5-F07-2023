# Pada node Heiter

iptables -F

# Load balancing HTTP (Port 80) antara Sein dan Stark
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 10.55.4.2 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 10.55.4.2
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 10.55.4.2 -j DNAT --to-destination 10.55.0.10

# Load balancing HTTPS (Port 443) antara Sein dan Stark
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 10.55.0.10 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 10.55.0.10
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 10.55.0.10 -j DNAT --to-destination 10.55.4.2

# testing dilakukan per port (80 dan 443)
# 1. Pada node Stark dan Sein dapat dijalankan perintah berikut
#   Stark => while true; do nc -l -p 80 -c 'echo "di-handle oleh Stark"'; done
#   Sein => while true; do nc -l -p 80 -c 'echo "di-handle oleh Sein"'; done

# 2. Pada node client, misal TurkRegion, jalankan perintah => nc [IP Sein] 80

# Untuk testing port 443, bisa mengulang step di atas, dengan mengganti port 80 menjadi 443,
# serta pada poin 2, di node client, perintahnya bisa diganti => nc [IP Stark] 443



