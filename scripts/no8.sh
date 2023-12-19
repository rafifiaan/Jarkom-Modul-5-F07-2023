# Pada node Web Server Sein dan Stark

# iptables -F

# Menambahkan aturan perizinan akses dari subnet Revolte hingga selesai masa pemilu (hingga selesai perhitungan suara)
# NID Subnet yang ada Revolte : 10.55.0.20
# terkait tenggat akhir, ditetapkan hingga proses rekapitulasi suara selesai yaitu 20 Maret 2024 (sumber : https://infopemilu.kpu.go.id/Pemilu/Peserta_pemilu)

iptables -A INPUT -s 10.55.0.20 -p tcp --dport 80 -m time --datestart "2023-12-16" --datestop "2024-03-20" -j DROP