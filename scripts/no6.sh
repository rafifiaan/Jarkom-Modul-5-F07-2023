# Pada node Web Server Sein dan Stark

iptables -F

# Tolak koneksi SSH dari GrobeForest ke Sein dan/atau Stark pada istirahat makan siang (Senin-Jumat, 12:00-13:00)
iptables -A INPUT -p tcp --dport 22 -s 10.55.4.4 -m time --timestart 12:00 --timestop 13:00 --weekdays Mon,Tue,Wed,Thu -j DROP

# Tolak koneksi SSH dari GrobeForest ke Sein dan/atau Stark pada saat Jumatan (Jumat, 11:00-13:00)
iptables -A INPUT -p tcp --dport 22 -s 10.55.4.4 -m time --timestart 11:00 --timestop 13:00 --weekdays Fri -j DROP


# testing komunikasi 
# 1. Buka koneksi port 22 di Sein atau/dan Stark dengan command berikut
#     (pastikan sudah menginstall nc)
#     nc -l -p 22

# 2. Hubungkan dari node GrobeForest dengan command berikut
#     nc [Sein/Stark] 22

#     port 22 untuk ssh

# 3. Uji mengirimkan pesan dari Sein/Stark dengan GrobeForest 