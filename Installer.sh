#!/data/data/com.termux/files/usr/bin/bash

pkg update
pkg install -y python
pkg install -y python-pip

read -p "Enter the password Medic gave you: " password

if [[ "$password" == "123" ]]; then
    wget https://raw.githubusercontent.com/medic2227/card/refs/heads/main/main.py
elif [[ "$password" == "321" ]]; then
    wget https://raw.githubusercontent.com/medic2227/nitro/refs/heads/main/main.py
else
    echo "Invalid password"
    exit 1
fi

rm -- "$0"
