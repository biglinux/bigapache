#!/bin/bash

/usr/share/debconf/fix_db.pl

set -euo pipefail
IFS=$'\n\t'

APP_PASS="$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;)"

# Set non-interactive mode
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/dbconfig-install boolean true"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/app-password-confirm password $APP_PASS"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/mysql/app-pass password $APP_PASS"
sudo debconf-set-selections <<< "phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2"﻿


windowID="$(xprop -root '\t$0' _NET_ACTIVE_WINDOW | cut -f 2)"

echo "phpmyadmin" | sed 's/$/\ /;s/--install //' | sed 's/\ /\ install\r\n/g' > /tmp/bigsynaptic$$
bigsudo synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$


sudo service apache2 restart
