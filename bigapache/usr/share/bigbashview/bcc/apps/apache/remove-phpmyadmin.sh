#!/bin/bash

windowID="$(xprop -root '\t$0' _NET_ACTIVE_WINDOW | cut -f 2)"

echo "phpmyadmin" | sed 's/$/\ /;s/--remove //' | sed 's/\ /\ uninstall\r\n/g' > /tmp/bigsynaptic$$
bigsudo synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
