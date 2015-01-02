base:
  '*':
    - requirements
  'content*':
    - apache
    - php
    - wordpress
  'mysql*':
    - mysql
    - mysql.user
    - mysql.databases
