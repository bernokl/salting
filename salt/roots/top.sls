base:
  'dev*':
    - requirements
  'dev-mysql*':
    - mysql
    - mysql.db_and_user
  'dev-content*':
    - apache
    - wordpress
prod:
  'prod*':
    - requirements
  'prod-content*':
    - apache
    - wordpress
  'prod-mysql*':
    - mysql
    - mysql.db_and_user

