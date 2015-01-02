include:
  - mysql.python


wordpress_db:
  mysql_database.present:
   - name: wordpress_db
   - character_set: utf8
   - collate: utf8_general_ci
