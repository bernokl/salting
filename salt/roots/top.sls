base:
  'vagrant*':
    - global
    - requirements
  'vagrant-mysql*':
    - mysql
    - mysql.db_and_user
  'vagrant-content*':
    - apache
    - wordpress
    - php

dev:
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

