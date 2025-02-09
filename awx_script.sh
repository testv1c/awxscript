#!/bin/bash

# Kullanıcıdan gelen inputları al
INPUT1=$1
INPUT2=$2

# Hostname alma: /etc/hostname veya $HOSTNAME kullan
if [ -f /etc/hostname ]; then
    HOSTNAME=$(cat /etc/hostname)
elif [ ! -z "$HOSTNAME" ]; then
    HOSTNAME=$HOSTNAME
else
    HOSTNAME="Hostname bulunamadı"
fi

# Çıktıyı kalıcı volume içine yaz
OUTPUT_FILE="/data/awx/projects/script_output.txt"

echo "Girdi 1: $INPUT1" > "$OUTPUT_FILE"
echo "Girdi 2: $INPUT2" >> "$OUTPUT_FILE"
echo "Hostname: $HOSTNAME" >> "$OUTPUT_FILE"

# Çıktıyı ekrana yazdır (AWX loglarında görünsün)
cat "$OUTPUT_FILE"

# Çıkış yap
exit 0
