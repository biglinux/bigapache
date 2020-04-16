#!/bin/bash

windowID="$(xprop -root '\t$0' _NET_ACTIVE_WINDOW | cut -f 2)"

echo "$(apt-cache search mariadb-server | grep ^mariadb | cut -f1 -d" " | tr '\n' ' ' | sed 's| $||g')" | sed 's/$/\ /;s/--remove //' | sed 's/\ /\ uninstall\r\n/g' > /tmp/bigsynaptic$$
bigsudo synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
