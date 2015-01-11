base:
  'dev*':
    - requirements
    - apache
prod:
  'prod*':
    - requirements
    - apache
