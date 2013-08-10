sudo mkdir -p /var/www/$1/public_html
sudo chown -R www-data:www-data /var/www/$1/public_html
sudo chmod 755 /var/www
sudo echo -e "server { listen 80; root /var/www/$1/public_html; index index.html index.htm; server_name $1; }" >> /etc/nginx/sites-available/$1
sudo ln -s /etc/nginx/sites-available/$1 /etc/nginx/sites-enabled/$1
sudo service nginx restart
