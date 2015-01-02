include:
  - mysql.python

berno:
  mysql_user.present:
    - host: localhost
    - password: bobcat

berno_mysql:
   mysql_grants.present:
    - grant: select,insert,update
    - database: mysql.*
    - user: berno
    - host: localhost

