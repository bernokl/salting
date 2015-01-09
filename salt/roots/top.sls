base:
  'dev*':
    - requirements
  'dev-mysql*':
    - mysql
    - mysql.db_and_user
prod:
  'prod*':
    - requirements
  'prod-mysql*':
    - mysql
    - mysql.db_and_user
