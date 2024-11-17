#!/bin/bash
# ./portScan.sh <ip-adresses>

if [ $1 ]; then 
   ip_address=$1
   for port in $(seq 1 65535); do 
    timeout 1 bash -c "echo '' > /dev/tcp/ip_address/$port" 2>/dev/null && echo "el puerto eesta abierto" & echo "[*] Port $port - OPEN" & 
   done; wait 
else 
 echo -e "\n[*] Uso: ./portScan.sh <ip-adresses>\n"
 exit 1
fi 