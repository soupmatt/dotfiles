#!/bin/bash

sudo /usr/local/opt/dnsmasq/sbin/dnsmasq -d 2>&1 | tee -a $HOME/dns.log
