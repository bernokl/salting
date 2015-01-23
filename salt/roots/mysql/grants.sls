proxy_config:
  file.managed:
   - name: /home/grants.sql
   - source: salt://mysql/files/grants.sql
   - template: jinja
