#! /bin/bash

iptables -A INPUT -p tcp --dport $1 -j ACCEPT

