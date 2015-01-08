include:
  - mysql.python
  - mysql.databases

berno:
  module.run:
    - name: mysql.user_create
    - user: berno
    - host: localhost
    - password: bobcat

berno_grants:
  module.run:
    - name: mysql.grant_add
    - user: berno
    - host: localhost
    - database: '*.*'
    - grant: all

wp_user:
  module.run:
    - name: mysql.user_create
    - user: wp_user
    - host: localhost
    - password: bobcat

wp_user_grants:
  module.run:
    - name: mysql.grant_add
    - user: wp_user
    - host: localhost
    - database: 'wordpress_db.*'
    - grant: all

