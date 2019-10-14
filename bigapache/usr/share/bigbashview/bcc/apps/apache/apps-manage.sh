#!/bin/bash

windowID="$(xprop -root '\t$0' _NET_ACTIVE_WINDOW | cut -f 2)"
    
if [ "$1" = "install-atom" ]; then
    curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | apt-key add -
    sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
    
    synaptic --parent-window-id "$windowID" --non-interactive -o Synaptic::closeZvt=true --hide-main-window --update-at-startup
    
    echo "atom" | sed 's/$/\ /;s/--install //' | sed 's/\ /\ install\r\n/g' > /tmp/bigsynaptic$$

    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi


if [ "$1" = "remove-atom" ]; then
    echo "atom" | sed 's/$/\ /;s/--remove //' | sed 's/\ /\ uninstall\r\n/g' > /tmp/bigsynaptic$$
    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi


if [ "$1" = "install-bluefish" ]; then
    synaptic --parent-window-id "$windowID" --non-interactive -o Synaptic::closeZvt=true --hide-main-window --update-at-startup
    
    echo "bluefish" | sed 's/$/\ /;s/--install //' | sed 's/\ /\ install\r\n/g' > /tmp/bigsynaptic$$

    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi


if [ "$1" = "remove-bluefish" ]; then
    echo "bluefish" | sed 's/$/\ /;s/--remove //' | sed 's/\ /\ uninstall\r\n/g' > /tmp/bigsynaptic$$
    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi


if [ "$1" = "install-codium" ]; then
    wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | apt-key add -

    echo 'deb https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/debs/ vscodium main' | tee /etc/apt/sources.list.d/vscodium.list

    synaptic --parent-window-id "$windowID" --non-interactive -o Synaptic::closeZvt=true --hide-main-window --update-at-startup
    
    echo "codium" | sed 's/$/\ /;s/--install //' | sed 's/\ /\ install\r\n/g' > /tmp/bigsynaptic$$

    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi

if [ "$1" = "remove-codium" ]; then
    echo "codium" | sed 's/$/\ /;s/--remove //' | sed 's/\ /\ uninstall\r\n/g' > /tmp/bigsynaptic$$
    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi


if [ "$1" = "install-code" ]; then

    wget -qO - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | apt-key add -

    echo 'deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main' > /etc/apt/sources.list.d/vscode.list

    synaptic --parent-window-id "$windowID" --non-interactive -o Synaptic::closeZvt=true --hide-main-window --update-at-startup
    
    echo "code" | sed 's/$/\ /;s/--install //' | sed 's/\ /\ install\r\n/g' > /tmp/bigsynaptic$$

    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi

if [ "$1" = "remove-code" ]; then
    echo "code" | sed 's/$/\ /;s/--remove //' | sed 's/\ /\ uninstall\r\n/g' > /tmp/bigsynaptic$$
    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi


if [ "$1" = "install-sublime" ]; then

    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -

    echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list

    synaptic --parent-window-id "$windowID" --non-interactive -o Synaptic::closeZvt=true --hide-main-window --update-at-startup
    
    echo "sublime-text" | sed 's/$/\ /;s/--install //' | sed 's/\ /\ install\r\n/g' > /tmp/bigsynaptic$$

    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi

if [ "$1" = "remove-sublime" ]; then
    echo "sublime-text" | sed 's/$/\ /;s/--remove //' | sed 's/\ /\ uninstall\r\n/g' > /tmp/bigsynaptic$$
    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi

if [ "$1" = "install-php" ]; then

    synaptic --parent-window-id "$windowID" --non-interactive -o Synaptic::closeZvt=true --hide-main-window --update-at-startup
    
    echo "php" | sed 's/$/\ /;s/--install //' | sed 's/\ /\ install\r\n/g' > /tmp/bigsynaptic$$

    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi

if [ "$1" = "remove-php" ]; then
    echo "php" | sed 's/$/\ /;s/--remove //' | sed 's/\ /\ uninstall\r\n/g' > /tmp/bigsynaptic$$
    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$

fi
