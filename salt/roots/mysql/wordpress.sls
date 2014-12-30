# Download and untar latest from wordpress site
get_wordpress:
  file.managed:
    - name: /var/www/html/wordpress.tar.gz
    - source: http://wordpress.org/latest.tar.gz
    - source_hash: md5=5adac1bfc61b793a1ca9bcb4d67b4d28

untar_wordpress:
  module.run:
    - name: archive.tar
    - options: zxvf
    - tarfile: /var/www/html/wordpress.tar.gz
    - cwd: /var/www/html/

get_wp-cli:
  cmd.run:
    - name: 'curl -sS https://raw.github.com/wp-cli/wp-cli.github.com/master/installer.sh | bash'
    - cwd: /home/vagrant/
    - user: vagrant

# symlink's the WP binary to /usr/local/bin so it's in the PATH
/usr/local/bin/wp:
  file:
    - symlink
    - target: /home/vagrant/.wp-cli/bin/wp


###################### THIS STILL NEEDS DONE ######################################
# This command tells wp-cli to create our wp-config.php, DB info needs to be the same as above
# config_wordpress:
# cmd.run:
# - cwd: /var/www/html/wordpress/
# - name: '/usr/local/bin/wp core config --dbname=wordpress --dbuser=wordpress --dbpass=password'
# # This command tells wp-cli to install wordpress, the --url needs to be the same as the IP you set for the
# # Private IP in the Vagrantfile
# install_wordpress:
# cmd.run:
# - cwd: /var/www/html/wordpress/
# - name: '/usr/local/bin/wp core install --url=http://192.168.0.10/wordpress --title=development --admin_user=admin --admin_password=password --admin_email=root@localhost'
#
