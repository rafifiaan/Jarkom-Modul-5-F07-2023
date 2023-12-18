# Laporan Resmi Praktikum Jaringan Komputer Modul 5 2023

**Topic :**

Firewall

**Identity :** 

Kelompok F07 -
Jaringan Komputer (F) </br>
*Insitut Teknologi Sepuluh Nopember*

**Authors :**
| Name                              | Student ID |
| ----------------------------------|------------|
| Arfi Raushani Fikra               | 5025211084 |
| Rafi Aliefian Putra Ramadhani     | 5025211234 |

## Information
Prefix IP **10.55.x.x**

## List of Contents
- [Preparation](#preparation)
    - [Topology](#topology)
    - [Node Config](#node-configuration)
    - [Routing & DHCP Config](#routing--dhcp-config)
- [Question 1](#question-1)
- [Question 2](#question-2)
- [Question 3](#question-3)
- [Question 4](#question-4)
- [Question 5](#question-5)
- [Question 6](#question-6)
- [Question 7](#question-7)
- [Question 8](#question-8)
- [Question 9](#question-9)
- [Question 10](#question-10)
- [Obstacle](#obstacle)

## Preparation
### Topology
![topof07](img/topology.png)

### Node Configuration
- **Router**
  - Aura 
    ```
    auto eth0
    iface eth0 inet dhcp

    auto eth1
    iface eth1 inet static
        address 10.55.0.1
        netmask 255.255.255.252

    auto eth2
    iface eth2 inet static
        address 10.55.0.5
        netmask 255.255.255.252
    ```
  
  - Heiter
    ```
    auto eth0
    iface eth0 inet static
        address 10.55.0.2
        netmask 255.255.255.252
        gateway 10.55.0.1

    auto eth1
    iface eth1 inet static
        address 10.55.8.1
        netmask 255.255.248.0
        gateway 10.55.0.1

    auto eth2
    iface eth2 inet static
        address 10.55.4.1
        netmask 255.255.252.0
        gateway 10.55.0.1
    ```

  - Frieren
    ```
    auto eth0
    iface eth0 inet static
        address 10.55.0.6
        netmask 255.255.255.252
        gateway 10.55.0.5

    auto eth1
    iface eth1 inet static
        address 10.55.0.9
        netmask 255.255.255.252
        gateway 10.55.0.5

    auto eth2
    iface eth2 inet static
        address 10.55.0.13
        netmask 255.255.255.252
        gateway 10.55.0.5
    ```

  - Himmel
    ```
    auto eth0
    iface eth0 inet static
        address 10.55.0.14
        netmask 255.255.255.252
        gateway 10.55.0.13

    auto eth1
    iface eth1 inet static
        address 10.55.2.1
        netmask 255.255.254.0
        gateway 10.55.0.13

    auto eth2
    iface eth2 inet static
        address 10.55.0.129
        netmask 255.255.255.128
        gateway 10.55.0.13
    ```

  - Fern
    ```
    auto eth0
    iface eth0 inet static
        address 10.55.0.131
        netmask 255.255.255.128
        gateway 10.55.0.129

    auto eth1
    iface eth1 inet static
        address 10.55.0.17
        netmask 255.255.255.252
        gateway 10.55.0.129

    auto eth2
    iface eth2 inet static
        address 10.55.0.21
        netmask 255.255.255.252
        gateway 10.55.0.129
    ```

- **Host**
  - TurkRegion (1022 Host)
    ```
    auto eth0
    iface eth0 inet dhcp
    ```

  - GrabeForest (512 Host)
    ```
    auto eth0
    iface eth0 inet dhcp
    ```

  - LaubHills (255 Host)
    ```
    auto eth0
    iface eth0 inet dhcp
    ```

  - SchwerMountain (64 Host)
    ```
    auto eth0
    iface eth0 inet dhcp
    ```

- **Web Server**
  - Sein
    ```
    auto eth0
    iface eth0 inet static
        address 10.55.4.2
        netmask 255.255.252.0
        gateway 10.55.4.1
    ```

  - Stark
    ```
    auto eth0
    iface eth0 inet static
        address 10.55.0.10
        netmask 255.255.255.252
        gateway 10.55.0.9
    ```

- **DNS & DHCP Server**
  - Richter (DNS)
    ```
    auto eth0
    iface eth0 inet static
        address 10.55.0.18
        netmask 255.255.255.252
        gateway 10.55.0.17
    ```

  - Revolter (DHCP)
    ```
    auto eth0
    iface eth0 inet static
        address 10.55.0.22
        netmask 255.255.255.252
        gateway 10.55.0.21
    ```

### Routing & DHCP Config
- **Routing**
```
# template
# route add -net <NID subnet> netmask <netmask> gw <IP gateway>
```
  - Aura
    ```
    # A5
    route add -net 10.55.0.8 netmask 255.255.255.252 gw 10.55.0.6
    # A6
    route add -net 10.55.0.12 netmask 255.255.255.252 gw 10.55.0.6
    # A7
    route add -net 10.55.2.0 netmask 255.255.254.0 gw 10.55.0.6
    # A8
    route add -net 10.55.0.128 netmask 255.255.255.128 gw 10.55.0.6
    # A9
    route add -net 10.55.0.16 netmask 255.255.255.252 gw 10.55.0.6
    # A10
    route add -net 10.55.0.20 netmask 255.255.255.252 gw 10.55.0.6
    # A2
    route add -net 10.55.8.0 netmask 255.255.248.0 gw 10.55.0.2
    # A1
    route add -net 10.55.4.0 netmask 255.255.252.0 gw 10.55.0.2
    ```

  - Fern
    ```
    # default
    route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.55.0.129
    ```

  - Himmel
    ```
    # default
    route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.55.0.13
    # A9
    route add -net 10.55.0.16 netmask 255.255.255.252 gw 10.55.0.131
    # A10
    route add -net 10.55.0.20 netmask 255.255.255.252 gw 10.55.0.131
    ```

  - Heiter
    ```
    # default
    route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.55.0.1
    ```

  - Heiter
    ```
    # default
    route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.55.0.5
    # A7
    route add -net 10.55.2.0 netmask 255.255.254.0 gw 10.55.0.14
    # A8
    route add -net 10.55.0.128 netmask 255.255.255.128 gw 10.55.0.14
    # A9
    route add -net 10.55.0.16 netmask 255.255.255.252 gw 10.55.0.14
    # A10
    route add -net 10.55.0.20 netmask 255.255.255.252 gw 10.55.0.14
    ``` 

- **DHCP Config**
  - Revolte (DHCP Server)
    ```
    apt-get update
    apt-get install isc-dhcp-server -y
    dhcpd --version

    echo '
    # Defaults for isc-dhcp-server (sourced by /etc/init.d/isc-dhcp-server)

    # Path to dhcpd'\''s config file (default: /etc/dhcp/dhcpd.conf).
    #DHCPDv4_CONF=/etc/dhcp/dhcpd.conf
    #DHCPDv6_CONF=/etc/dhcp/dhcpd6.conf

    # Path to dhcpd'\''s PID file (default: /var/run/dhcpd.pid).
    #DHCPDv4_PID=/var/run/dhcpd.pid
    #DHCPDv6_PID=/var/run/dhcpd6.pid

    # Additional options to start dhcpd with.
    #       Don'\''t use options -cf or -pf here; use DHCPD_CONF/ DHCPD_PID instead
    #OPTIONS=""

    # On what interfaces should the DHCP server (dhcpd) serve DHCP requests?
    #       Separate multiple interfaces with spaces, e.g. "eth0 eth1".
    INTERFACES="eth0"
    ' > /etc/default/isc-dhcp-server

    echo '
    # A1 ke GrobeForest
    subnet 10.55.4.0 netmask 255.255.252.0 {
        range 10.55.4.3 10.55.7.254; # range ip untuk GrobeForest
        option routers 10.55.4.1; # ip gateway ke subnet A1 (Heiter-eth2)
        option broadcast-address 10.55.7.255; # broadcast ID subnet A1
        option domain-name-servers 10.55.0.18; # ip dns server Richter-eth0
        default-lease-time 180; # 3 menit
        max-lease-time 5760; # 96 menit
    }

    # A2 ke TurkRegion
    subnet 10.55.8.0 netmask 255.255.248.0 {
        range 10.55.8.2 10.55.15.254; # range ip untuk TurkRegion
        option routers 10.55.8.1; # ip gateway ke subnet A2 (Heiter-eth1)
        option broadcast-address 10.55.15.255; # broadcast ID subnet A2
        option domain-name-servers 10.55.0.18; # ip dns server Richter-eth0
        default-lease-time 180; # 3 menit
        max-lease-time 5760; # 96 menit
    }

    # A3
    subnet 10.55.0.0 netmask 255.255.255.252 {
    }

    # A4
    subnet 10.55.0.4 netmask 255.255.255.252 {
    }

    # A5
    subnet 10.55.0.8 netmask 255.255.255.252 {
    }

    # A6
    subnet 10.55.0.12 netmask 255.255.255.252 {
    }

    # A7 ke LaubHills
    subnet 10.55.2.0 netmask 255.255.254.0 {
        range 10.55.2.2 10.55.3.254; # range ip untuk LaubHills
        option routers 10.55.2.1; # ip gateway ke subnet A7 (Himmel-eth1)
        option broadcast-address 10.55.3.255; # broadcast ID subnet A7
        option domain-name-servers 10.55.0.18; # ip dns server Richter-eth0
        default-lease-time 180; # 3 menit
        max-lease-time 5760; # 96 menit
    }

    # A8 ke SchwerMountain
    subnet 10.55.0.128 netmask 255.255.255.128 {
        range 10.55.0.130 10.55.0.254; # range ip untuk SchwerMountain
        option routers 10.55.0.129; # ip gateway ke subnet A8 (Himmel-eth2)
        option broadcast-address 10.55.0.255; # broadcast ID subnet A8
        option domain-name-servers 10.55.0.18; # ip dns server Richter-eth0
        default-lease-time 180; # 3 menit
        max-lease-time 5760; # 96 menit
    }

    # A9
    subnet 10.55.0.16 netmask 255.255.255.252 {
    }

    # A10
    subnet 10.55.0.20 netmask 255.255.255.252 {
    }

    ' > /etc/dhcp/dhcpd.conf

    service isc-dhcp-server restart
    ```

  - Heiter dan Himmel (DHCP Relay)
    ```
    apt-get update
    apt-get install isc-dhcp-relay -y
    service isc-dhcp-relay start

    echo '
    SERVERS="10.55.0.22" # IP DHCP Server Revolte-eth0
    INTERFACES="eth0 eth1 eth2" # add eth0 as well to prevent failure
    OPTIONS=""
    ' > /etc/default/isc-dhcp-relay

    echo 'net.ipv4.ip_forward=1' > /etc/sysctl.conf

    service isc-dhcp-relay restart
    ```


## Question 1
> Agar topologi yang kalian buat dapat mengakses keluar, kalian diminta untuk mengkonfigurasi Aura menggunakan iptables, tetapi tidak ingin menggunakan MASQUERADE.


## Question 2
> Kalian diminta untuk melakukan drop semua TCP dan UDP kecuali port 8080 pada TCP.


## Question 3
> Kepala Suku North Area meminta kalian untuk membatasi DHCP dan DNS Server hanya dapat dilakukan ping oleh maksimal 3 device secara bersamaan, selebihnya akan di drop.


## Question 4
> Lakukan pembatasan sehingga koneksi SSH pada Web Server hanya dapat dilakukan oleh masyarakat yang berada pada GrobeForest.


## Question 5
> Selain itu, akses menuju WebServer hanya diperbolehkan saat jam kerja yaitu Senin-Jumat pada pukul 08.00-16.00.


## Question 6
> Lalu, karena ternyata terdapat beberapa waktu di mana network administrator dari WebServer tidak bisa stand by, sehingga perlu ditambahkan rule bahwa akses pada hari Senin - Kamis pada jam 12.00 - 13.00 dilarang (istirahat maksi cuy) dan akses di hari Jumat pada jam 11.00 - 13.00 juga dilarang (maklum, Jumatan rek).


## Question 7
> Karena terdapat 2 WebServer, kalian diminta agar setiap client yang mengakses Sein dengan Port 80 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan dan request dari client yang mengakses Stark dengan port 443 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan.

<div align=justify>

Untuk menyelesaikannya diperlukan aktivasi aturan pada iptables di router yang terhubung dengan WebServer, termasuk penggunaan **Heiter**. Masukkan beberapa aturan berikut:
```
# Load balancing HTTP (Port 80) antara Sein dan Stark
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 10.55.4.2 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 10.55.4.2
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 10.55.4.2 -j DNAT --to-destination 10.55.0.10

# Load balancing HTTPS (Port 443) antara Sein dan Stark
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 10.55.0.10 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 10.55.0.10
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 10.55.0.10 -j DNAT --to-destination 10.55.4.2
```

Kemudian menjalankan Testing Port 80 dan 443 pada **Sein** dan **Stark**:
```
while true; do nc -l -p 80 -c 'echo "di-handle oleh Stark"'; done
while true; do nc -l -p 80 -c 'echo "di-handle oleh Sein"'; done

while true; do nc -l -p 443 -c 'echo "di-handle oleh Stark"'; done
while true; do nc -l -p 443 -c 'echo "di-handle oleh Sein"'; done
```

**Port 80:**
![7-80Stark](img/7-80Stark.png)
![7-80Sein](img/7-80Sein.png)

**Port 443:**

![7-443Stark](img/7-443Stark.png)
![7-443Sein](img/7-443Sein.png)

Setelah itu, testing dapat dilakukan pada **TurkRegion(Host)** dengan menjalankan command:
```
nc [ip stark/sein] [80/443]
```

![result-7](img/testing-7.png)

Hasil-nya akan menunjukkan Port di-handle secara bergantian oleh Sein dan Stark.


## Question 8
> Karena berbeda koalisi politik, maka subnet dengan masyarakat yang berada pada Revolte dilarang keras mengakses WebServer hingga masa pencoblosan pemilu kepala suku 2024 berakhir. Masa pemilu (hingga pemungutan dan penghitungan suara selesai) kepala suku bersamaan dengan masa pemilu Presiden dan Wakil Presiden Indonesia 2024.


## Question 9
> Sadar akan adanya potensial saling serang antar kubu politik, maka WebServer harus dapat secara otomatis memblokir  alamat IP yang melakukan scanning port dalam jumlah banyak (maksimal 20 scan port) di dalam selang waktu 10 menit. (clue: test dengan nmap)



## Question 10
> Karena kepala suku ingin tau paket apa saja yang di-drop, maka di setiap node server dan router ditambahkan logging paket yang di-drop dengan standard syslog level. 


## Obstacle