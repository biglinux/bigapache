#!/bin/bash

echo "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' IDENTIFIED BY '$1';" | mysql -u root
