include:
  - mysql.python
  - mysql

wordpress_db:
  mysql_database.present:
    - name: wordpress_db
    - character_set: utf8
    - collate: utf8_general_ci
    - connection_host: localhost
    - connection_port: 3306
    - connection_user: 'root'
    - connection_pass: 'password'
    - connection_db: 'mysql'
    - connection_unix_socket: '/var/run/mysqld/mysqld.sock'
    - connection_charset: utf8

berno:
  mysql_user.present:
    - host: localhost
    - password: bobcat
    - connection_host: localhost
    - connection_port: 3306
    - connection_user: 'root'
    - connection_pass: 'password'
    - connection_db: 'mysql'
    - connection_unix_socket: '/var/run/mysqld/mysqld.sock'
    - connection_charset: utf8

berno_mysql:
   mysql_grants.present:
    - grant: all
    - database: '*.*'
    - user: berno
    - host: localhost
    - connection_host: localhost
    - connection_port: 3306
    - connection_user: 'root'
    - connection_pass: 'password'
    - connection_db: 'mysql'
    - connection_unix_socket: '/var/run/mysqld/mysqld.sock'
    - connection_charset: utf8


wp_user:
  mysql_user.present:
    - host: 192.168.50.5
    - password: bobcat
    - connection_host: localhost
    - connection_port: 3306
    - connection_user: 'root'
    - connection_pass: 'password'
    - connection_db: 'mysql'
    - connection_unix_socket: '/var/run/mysqld/mysqld.sock'
    - connection_charset: utf8


wp_mysql:
   mysql_grants.present:
    - grant: all
    - database: 'wordpress_db.*'
    - user: wp_user
    - host: 192.168.50.5
    - connection_host: localhost
    - connection_port: 3306
    - connection_user: 'root'
    - connection_pass: 'password'
    - connection_db: 'mysql'
    - connection_unix_socket: '/var/run/mysqld/mysqld.sock'
    - connection_charset: utf8

