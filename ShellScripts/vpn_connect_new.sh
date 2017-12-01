#!/bin/bash
sudo /usr/sbin/vpnc --pid-file /tmp/vpnc-pid.Home.pid --natt-mode natt --ifmode tun --gateway 50.148.52.99 --id lumnet --no-detach --dpd-idle=0 
