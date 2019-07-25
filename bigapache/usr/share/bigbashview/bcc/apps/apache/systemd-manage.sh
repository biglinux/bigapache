#!/bin/bash


if [ "$1" = "enable-apache" ]; then
    systemctl enable apache2
fi

if [ "$1" = "disable-apache" ]; then
    systemctl disable apache2
fi

if [ "$1" = "enable-mysql" ]; then
    systemctl enable mysql
fi

if [ "$1" = "disable-mysql" ]; then
    systemctl disable mysql
fi

if [ "$1" = "start-apache" ]; then
    service apache2 start
fi

if [ "$1" = "stop-apache" ]; then
    service apache2 stop
fi

if [ "$1" = "start-mysql" ]; then
    service mysql start
fi

if [ "$1" = "stop-mysql" ]; then
    service mysql stop
fi
