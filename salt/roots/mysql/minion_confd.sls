salt_minion_config:
  file.managed:
    - name: /etc/salt/minion.d/mysql_minion.conf
    - source: salt://mysql/files/mysql_minion.conf
    - template: jinja
    - makedirs: true

start_salt_minion:
    service.running:
     - name: salt-minion
     - watch:
        - file: /etc/salt/minion.d/mysql_minion.conf
    file.managed:
     - name: /etc/salt/minion.d/mysql_minion.conf
     - source: salt://mysql/files/mysql_minion.conf
