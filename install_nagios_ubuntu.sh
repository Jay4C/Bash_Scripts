#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-nagios-on-ubuntu-20-04/

sudo apt update

sudo apt install nagios4 nagios-plugins-contrib nagios-nrpe-plugin

sudo a2enmod authz_groupfile auth_digest

sudo nano /etc/apache2/conf-enabled/nagios4-cgi.conf

sudo systemctl restart apache2

sudo systemctl status apache2

sudo systemctl status nagios4

sudo htdigest -c /etc/nagios4/htdigest.users Nagios4 nagiosadmin

sudo systemctl restart apache2

sudo ufw allow Apache