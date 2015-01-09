base:
  '*':
    - requirements
  'content*':
    - apache
    - php
    - wordpress
  'mysql*':
    - mysql
    - mysql.db_and_user
  'salt-master*':
    - salt-master-minion
