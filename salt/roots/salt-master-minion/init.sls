/etc/salt/minion:
  file.managed:
    - source: salt://salt-master-minion/files/minion_master
