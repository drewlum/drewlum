#!/bin/bash
sudo /usr/sbin/vpnc --script /etc/vpnc/vpnc-config.LUM.conf --pid-file /home/dlum/tmp/vpnc-pid.lumnet.pid --natt-mode natt --ifmode tun --gateway 50.148.52.99 --id lumnet --no-detach --dpd-idle=0 
