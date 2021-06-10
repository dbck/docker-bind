#!/bin/bash
named-checkconf "/etc/bind/named.conf"
echo -e "Starting bind..."
exec /usr/sbin/named -c /etc/bind/named.conf -u bind -f