#!/bin/bash

windowID="$(xprop -root '\t$0' _NET_ACTIVE_WINDOW | cut -f 2)"

echo "mysql-server" | sed 's/$/\ /;s/--install //' | sed 's/\ /\ install\r\n/g' > /tmp/bigsynaptic$$
bigsudo synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
