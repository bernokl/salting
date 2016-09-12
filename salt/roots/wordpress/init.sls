# Download and untar latest from wordpress site
get_wordpress:
  file.managed:
    - name: /var/www/html/wordpress.tar.gz
    - source: http://wordpress.org/latest.tar.gz
    - source_hash: md5=ca0b978fd702eac033830ca2d0784b79

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
