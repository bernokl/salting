apache2:
  pkg.installed

/etc/apache2/apache2.conf:
  file.managed:
    - source: salt://apache/files/apache2.conf
    - template: jinja
