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
- [Question 1](#)
- [Question 2](#)
- [Question 3](#)
- [Question 4](#)
- [Question 5](#)
- [Question 6](#)
- [Question 7](#)
- [Question 8](#)
- [Question 9](#)
- [Question 10](#)
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


## Question 1

## Question 2

## Question 3

## Question 4

## Question 5

## Question 6

## Question 7

## Question 8

## Question 9

## Question 10

## Obstacle
