#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-setup-ftp-server-with-vsftpd-on-ubuntu-20-04/

sudo apt update

sudo apt install vsftpd

sudo systemctl status vsftpd

sudo nano /etc/vsftpd.conf

sudo openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem

sudo nano /etc/vsftpd.conf

sudo systemctl restart vsftpd

sudo ufw allow 20:21/tcp

sudo ufw allow 30000:31000/tcp

sudo ufw allow OpenSSH

sudo ufw disable

sudo ufw enable

sudo ufw status

sudo adduser newftpuser

echo "newftpuser" | sudo tee -a /etc/vsftpd.user_list

sudo mkdir -p /home/newftpuser/ftp/upload

sudo chmod 550 /home/newftpuser/ftp

sudo chmod 750 /home/newftpuser/ftp/upload

sudo chown -R newftpuser: /home/newftpuser/ftp

echo -e '#!/bin/sh\necho "This account is limited to FTP access only."' | sudo tee -a  /bin/ftponly

sudo chmod a+x /bin/ftponly

echo "/bin/ftponly" | sudo tee -a /etc/shells

sudo usermod newftpuser -s /bin/ftponly