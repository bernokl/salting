base:
  '*':
    - global
  'salt-master-digo':
    - update-repos
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
  'dev-api*':
    - apache
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
  'prod-api*':
    - apache
    - php
vag:
  'vag*':
    - requirements
  'vag-content*':
    - apache
    - wordpress
    - php
  'vag-mysql*':
    - mysql
    - mysql.db_and_user
    - mysql.grants
  'vag-api*':
    - apache
    - php
