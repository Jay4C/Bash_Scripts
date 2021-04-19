#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-and-configure-redmine-on-ubuntu-18-04/

sudo mysql

sudo apt install ruby-full

sudo apt install dirmngr gnupg apt-transport-https ca-certificates

sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 561F9B9CAC40B2F7

sudo add-apt-repository 'deb https://oss-binaries.phusionpassenger.com/apt/passenger bionic main'

sudo apt update

sudo apt install libnginx-mod-http-passenger

sudo apt install build-essential libmysqlclient-dev imagemagick libmagickwand-dev

sudo curl -L http://www.redmine.org/releases/redmine-4.0.0.tar.gz -o /tmp/redmine.tar.gz

cd /tmp

sudo tar zxf /tmp/redmine.tar.gz

sudo mv /tmp/redmine-4.0.0 /opt/redmine

sudo cp /opt/redmine/config/database.yml.example /opt/redmine/config/database.yml

sudo nano /opt/redmine/config/database.yml

cd /opt/redmine/

sudo gem install bundler --no-rdoc --no-ri 

sudo bundle install --without development test postgresql sqlite

cd /opt/redmine/

sudo bundle exec rake generate_secret_token

sudo RAILS_ENV=production bundle exec rake db:migrate

sudo chown -R www-data: /opt/redmine/

sudo nano /etc/nginx/sites-available/example.com

sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/

sudo nginx -t

sudo systemctl restart nginx