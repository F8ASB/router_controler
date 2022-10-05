#!/bin/bash
# Reboot Router01/2021 F8ASB.COM

if : >/dev/tcp/8.8.8.8/53; then
echo 'Internet disponible'
else
echo 'Internet non disponible'
echo 1 > /sys/class/gpio/gpio2/value
echo "Reboot web [`date`]" >> /var/log/netcheck
sleep 10
echo 0 > /sys/class/gpio/gpio2/value
fi
