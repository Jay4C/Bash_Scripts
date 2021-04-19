#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-set-up-nginx-server-blocks-on-ubuntu-20-04/

sudo mkdir -p /var/www/domain1.com/public_html

sudo chown -R www-data: /var/www/domain1.com

nano /etc/nginx/sites-available/example.com

sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/

sudo nginx -t

sudo systemctl restart nginx