# Pada node Web Server Sein dan Stark

iptables -F

# Izinkan koneksi SSH dari GrobeForest ke Sein dan/atau Stark pada jam kerja
# ketahui terlebih dahulu IP dari GrobeForest karena IP-nya dinamis - berubah setiap reload node
iptables -A INPUT -p tcp --dport 22 -s 10.55.4.4 -m time --timestart 08:00 --timestop 16:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT

# Tolak koneksi SSH dari GrobeForest ke Sein dan/atau Stark di luar jam kerja
iptables -A INPUT -p tcp --dport 22 -s 10.55.4.4 -j DROP

# Jika penolakan koneksi SSH ke Sein dan/atau Stark di luar jam kerja ini, diberlakukan untuk node selain GrobeForest,
# maka dapat mengganti pengaturan iptables di atas (iptables ke-3 dari paling atas)dengan yang di bawah ini
# iptables -A INPUT -p tcp --dport 22 -s 10.55.4.4 -j DROP

# testing komunikasi 
# 1. Buka koneksi port 22 di Sein atau/dan Stark dengan command berikut
#     (pastikan sudah menginstall nc)
#     nc -l -p 22

# 2. Hubungkan dari node GrobeForest dengan command berikut
#     nc [Sein/Stark] 22

#     port 22 untuk ssh

# 3. Uji mengirimkan pesan dari Sein/Stark dengan GrobeForest 