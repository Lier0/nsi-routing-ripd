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
192.168.
60.1, 61.1 <=> 61.2, 62.2 <=> 62.3, 63.3

Configure ripd on each host to enable:
```
vagrant@ubuntu-rip1:~$ ping 192.168.63.3
PING 192.168.63.3 (192.168.63.3) 56(84) bytes of data.
64 bytes from 192.168.63.3: icmp_seq=1 ttl=63 time=0.534 ms
```

