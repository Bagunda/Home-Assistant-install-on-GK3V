#!/bin/bash
apt update
apt upgrade -y
apt-get install -y jq wget lsb-release net-tools curl udisks2 apparmor-utils libglib2.0-bin network-manager dbus systemd-journal-remote unzip
systemctl start NetworkManager
systemctl enable NetworkManager
curl -fsSL get.docker.com | sh
gpasswd -a $USER docker
newgrp docker
wget https://github.com/home-assistant/os-agent/releases/download/1.6.0/os-agent_1.6.0_linux_x86_64.deb
dpkg -i os-agent_1.6.0_linux_x86_64.deb
wget https://github.com/home-assistant/supervised-installer/releases/download/1.4.3/homeassistant-supervised.deb
dpkg -i homeassistant-supervised.deb # BYPASS_OS_CHECK=true apt install ./homeassistant-supervised.deb  or  BYPASS_OS_CHECK=true dpkg -i homeassistant-supervised.deb
wget -O - https://get.hacs.xyz | bash -

# dpkg --purge homeassistant-supervised
