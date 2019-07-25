#!/bin/bash

windowID="$(xprop -root '\t$0' _NET_ACTIVE_WINDOW | cut -f 2)"

echo "apache2 apache2-bin apache2-data apache2-utils libapache2-mod-php libapache2-mod-python libapache2-mod-perl2 php-bcmath php-bz2 php-cgi php-cli php-curl php-enchant php-fpdf php-gd php-geoip php-gettext php-gmp php-gnupg php-image-text php-imagick php-imap php-json php-ldap php-lua php-mail php-mailparse php-markdown php-mdb2 php-mdb2-driver-mysql php-odbc php-recode php-soap php-sybase php-tidy php-xmlrpc php-zip" | sed 's/$/\ /;s/--remove //' | sed 's/\ /\ uninstall\r\n/g' > /tmp/bigsynaptic$$
bigsudo synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
