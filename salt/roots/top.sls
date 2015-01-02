base:
  '*':
    - requirements
  'content*':
    - apache
    - wordpress
  'mysql*':
    - mysql
    - mysql.user
    - mysql.databases
