/etc/salt/master:
  file.managed:
    - source: salt://salt-master-minion/files/master

/etc/salt/minion:
  file.managed:
    - source: salt://salt-master-minion/files/minion_master

/etc/salt/cloud:
  file.managed:
    - source: salt://salt-master-minion/files/salt-cloud-config
    - template: jinja

/etc/salt/cloud.profiles:
  file.managed:
    - source: salt://salt-master-minion/files/cloud.profiles

/etc/salt/master.d/reactor.conf:
  file.managed:
    - source: salt://salt-master-minion/files/reactor.conf
