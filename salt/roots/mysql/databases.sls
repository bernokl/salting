include:
  - mysql.python

wordpress_db:
  module.run:
    - name: mysql.db_create
    - m_name: wordpress_db
    - character_set: utf8
    - collate: utf8_general_ci
