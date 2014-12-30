install_mysql:
  pkg.installed:
    - name: mysql-server

mysql_debconf:
  debconf.set:
    - name: mysql-server
    - data:
        'mysql-server/root_password': {'type': 'password', 'value': 'password'}
        'mysql-server/root_password_again': {'type': 'password', 'value': 'password'}
        'mysql-server/start_on_boot': {'type': 'boolean', 'value': 'true'}
    - require_in:
        - pkg: install_mysql
