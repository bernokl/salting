include:
  - mysql.minion_confd

mysql_packages:
  pkg.installed:
    - pkgs:
      - debconf-utils
      - percona-toolkit

install_mysql:
    pkg.installed:
     - name: mysql-server-5.5
     - pkgs: 
        - mysql-server-5.5
     - service: running

mysql_debconf:
  debconf.set:
    - name: mysql-server-5.5-setup
    - data:
        'mysql-server/root_password': {'type': 'password', 'value': 'password'}
        'mysql-server/root_password_again': {'type': 'password', 'value': 'password'}
        'mysql-server/start_on_boot': {'type': 'boolean', 'value': 'true'}
    - require_in:
        - pkg: install_mysql

mycnf_file:
  file.managed:
    - name: /etc/mysql/my.cnf 
    - source: salt://mysql/files/my.cnf
    - template: jinja
    - require_in:
        - pkg: install_mysql
    - makedirs: true

