# Pada node host : Turk, Grobe, Laub, Schwer

apt-get update
apt-get install netcat -y

iptables -F

# Drop semua koneksi UDP
iptables -A INPUT -p udp -j DROP

# Drop semua koneksi TCP kecuali port 8080
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp -j DROP


# testing komunikasi
# 1. Buka koneksi port 8080 di GrobeForest dengan command berikut
#     (pastikan sudah menginstall nc)
#     nc -l -p 8080

# 2. Hubungkan dari node lain, misal Sein dengan command berikut
#     nc [ip GrobeForest] 8080
#     (ketahui terlebih dahulu ip GrobeForest, karena ip-nya dinamis)

# 3. Uji mengirimkan pesan di Sein, maka akan diterima di GrobeForest 

# 4. Untuk pengujian komunikasi dengan port selain 8080 (port tertolak), 
#    maka dapat mengulangi tahapan 1-3 di atas, namun dengan port berbeda, 
#    misal 8081
