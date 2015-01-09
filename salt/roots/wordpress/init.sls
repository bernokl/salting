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

/var/www:
  file.directory:
    - user: www-data
    - group: www-data
    - recurse:
        - user
        - group
