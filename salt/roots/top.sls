base:
  '*':
    - global
Dev:
  'dev*':
    - requirements
  'dev-mysql*':
    - mysql
    - mysql.db_and_user
  'dev-content*':
    - apache
    - wordpress
    - php
prod:
  'prod*':
    - requirements
  'prod-content*':
    - apache
    - wordpress
    - php
  'prod-mysql*':
    - mysql
    - mysql.db_and_user

