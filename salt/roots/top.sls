base:
  '*':
    - requirements
  'dev*':
    - mysql
    - mysql.db_and_user
  'mysql*':
    - mysql
    - mysql.db_and_user
prod:
  'prod*':
    - mysql
    - mysql.db_and_user
  'salt-master*':
    - salt-master-minion
