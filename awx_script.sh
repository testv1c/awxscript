#!/bin/bash

# Kullanıcıdan gelen inputları al
INPUT1=$1
INPUT2=$2

# Hostname alma: /etc/hostname veya $HOSTNAME kullan
if [ -f /etc/hostname ]; then
    HOSTNAME=$(cat /etc/hostname)
elif [ -n "$HOSTNAME" ]; then
    HOSTNAME=$HOSTNAME
else
    HOSTNAME="Hostname bulunamadı"
fi

# Çıktıyı kalıcı volume içine yaz
OUTPUT_FILE="/var/lib/awx/projects/script_output.txt"

# Çıktı dosyasını oluştur veya üzerine yaz
{
    echo "Girdi 1: $INPUT1"
    echo "Girdi 2: $INPUT2"
    echo "Hostname: $HOSTNAME"
} > "$OUTPUT_FILE"

# Çıktıyı ekrana yazdır (AWX loglarında görünsün)
cat "$OUTPUT_FILE"

# Başarılı çıkış yap
exit 0
