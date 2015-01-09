base:
  '*':
    - requirements
  'dev*':
    - mysql
    - mysql.db_and_user
  'mysql*':
    - mysql
<<<<<<< HEAD
    - mysql.user
    - mysql.databases
=======
>>>>>>> dev
    - mysql.db_and_user
prod:
  'prod*':
    - mysql
    - mysql.db_and_user
  'salt-master*':
    - salt-master-minion
