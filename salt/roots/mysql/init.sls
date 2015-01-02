install_mysql:
  pkg.installed:
    - pkgs:
      - mysql-server-5.5
      - debconf-utils
      - percona-toolkit

mysql_debconf:
  debconf.set:
    - name: mysql-server-5.5
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

   
