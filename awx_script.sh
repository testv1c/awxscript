#!/bin/bash

# Parametreleri al
INPUT1=$1
INPUT2=$2
HOSTNAME=$(hostname)

# Çıktıyı dosyaya yaz
echo "Girdi 1: $INPUT1" > /tmp/script_output.txt
echo "Girdi 2: $INPUT2" >> /tmp/script_output.txt
echo "Hostname: $HOSTNAME" >> /tmp/script_output.txt

# Çıktıyı ekrana yazdır (AWX içinde loglarda görünmesi için)
cat /tmp/script_output.txt

# Çıkış yap
exit 0
