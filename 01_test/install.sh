#! /bin/bash
sudo su -
yum install -y wget httpd
amazon-linux-extras enable php7.2
amazon-linux-extras enable lamp-mariadb10.2-php7.2
yum install php-cli php-pdo php-fpm php-json php-mysqlnd mariadb -y
wget https://ko.wordpress.org/latest-ko_KR.tar.gz
tar xvfz latest-ko_KR.tar.gz
cp -a wordpress/* /var/www/html/
chown -R apache.apache /var/www/html/*
sed -i 's/DirectoryIndex index.html/DirectoryIndex index.php/g' /etc/httpd/conf/httpd.conf
mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sed -i 's/database_name_here/wordpress/g' /var/www/html/wp-config.php 
sed -i 's/username_here/admin/g' /var/www/html/wp-config.php 
sed -i 's/password_here/It12345!/g' /var/www/html/wp-config.php 
sed -i 's/localhost/mydb.cb2ctfvzmsga.ap-northeast-2.rds.amazonaws.com/g' /var/www/html/wp-config.php 
cat > /var/www/html/health.html << EOF
<html>
<body>
<h1>Health-Check</h1>
</body>
</html>
EOF
systemctl enable httpd
systemctl start httpd