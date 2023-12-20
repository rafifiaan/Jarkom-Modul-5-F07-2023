# Pada node DNS Server Richter dan DHCP Server Revolte

iptables -F

# status ESTABLISHED mengacu pada koneksi yang sudah terbentuk, sedangkan RELATED mengacu pada koneksi yang terkait dengan koneksi yang sudah ada
# mengizinkan paket yang terkait dengan koneksi yang sudah ada atau yang sudah mapan. 
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# menolak lalu lintas ping jika jumlah koneksi melebihi batas 3
iptables -A INPUT -p icmp -m connlimit --connlimit-above 3 --connlimit-mask 0 -j DROP

# testing ping
# Setelah iptables di atas dijalankan pada node yang ditentukan,
# lakukan ping ke alamat IP Richter atau/dan Revolte melalui 3 node, dan coba juga ping dengan node keempat