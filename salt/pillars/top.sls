base:
  'dev*':
    - apache
prod:
  'prod*':
    - prod
  'salt-master*':
    - salt-master-minion
