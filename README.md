# nsi-routing-ripd
Quagga ripd env

## Requirement
* vagrant (https://www.vagrantup.com/downloads)
* virtualbox -default- (https://www.virtualbox.org/wiki/Downloads)

## Deployment
```
wget https://github.com/Lier0/nsi-routing-ripd/archive/refs/heads/main.zip
unzip main.zip
cd nsi-routing-ripd-main
vagrant up
```

## Extra
### local config
* Check https://github.com/Lier0/ubuntu20.04-quagga-ripd/blob/main/setup.sh

### cli
```
telnet localhost 2602
zebra

> enable
# conf t
(config)# router rip
(config-router)# help
```

### doc
https://www.quagga.net/docs/quagga.html#RIP

## Practical Exercice
prefix with 192.168.
```
        72.0--[R]--84.0
        /      |       \
60.0--[R]     83.0     [R]--64.0
        \      |       /
        73.0--[R]--94.0

```

Configure ripd on each host to enable:
```
vagrant@ubuntu-rip1:~$ ping -I 192.168.60.1 192.168.64.4
PING 192.168.64.4 (192.168.64.4) from 192.168.60.1 : 56(84) bytes of data.
64 bytes from 192.168.64.4: icmp_seq=1 ttl=63 time=0.535 ms
```
