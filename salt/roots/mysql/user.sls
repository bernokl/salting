include:
  - mysql.python
  - mysql.databases

berno:
  mysql_user.present:
    - host: localhost
    - password: bobcat

berno_mysql:
   mysql_grants.present:
    - grant: all
    - database: '*.*'
    - user: berno
    - host: localhost

wp_user:
  mysql_user.present:
    - host: 192.168.50.5
    - password: bobcat

wp_mysql:
   mysql_grants.present:
    - grant: all
    - database: 'wordpress_db.*'
    - user: wp_user
    - host: 192.168.50.5 
