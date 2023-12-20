# Pada node Web Server Sein dan Stark

iptables -F

# Izinkan koneksi SSH (port 22) dari GrobeForest ke Stark atau/dan Sein
# ketahui terlebih dahulu IP dari GrobeForest karena IP-nya dinamis - berubah setiap reload node
iptables -A INPUT -p tcp --dport 22 -s 10.55.4.4 -j ACCEPT

# Tolak koneksi SSH (port 22) dari sumber lainnya
iptables -A INPUT -p tcp --dport 22 -j DROP

# testing komunikasi 
# 1. Buka koneksi port 22 di Sein atau/dan Stark dengan command berikut
#     (pastikan sudah menginstall nc)
#     nc -l -p 22

# 2. Hubungkan dari node GrobeForest dengan command berikut
#     nc [Sein/Stark] 22

#     port 22 untuk ssh

# 3. Uji mengirimkan pesan dari Sein/Stark dengan GrobeForest 