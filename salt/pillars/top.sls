base:
  '*':
    - global
  'G@roles:web':
    - web
dev:
  'dev*':
    - apache-dev
  'G@roles:web':
    - web
prod:
  'prod*':
    - apache-prod
  'G@roles:web':
    - web
vag:
  'vag*':
    - apache-prod
  'G@roles:web':
    - web
