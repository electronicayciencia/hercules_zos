#/bin/sh

export HERCULES_RC=/home/reinoso/ibm_zos_110/hercules.rc 

/usr/bin/hercules -d -f /home/reinoso/ibm_zos_110/hercules.cnf > /home/reinoso/hercules.log

# Esperar a que se haya levantado TCPIP en zOS
sleep 200

echo 1 > /proc/sys/net/ipv4/ip_forward
echo 1 > /proc/sys/net/ipv4/conf/tap0/proxy_arp
echo 1 > /proc/sys/net/ipv4/conf/ens33/proxy_arp

