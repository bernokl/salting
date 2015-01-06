from fabric.api import *

env.key_filename='~/.ssh/id_salt-master'
env.user='root'
env.hosts=['104.236.137.236']

def run_highstate():
    sudo("salt 'salt-master*' state.sls salt-master-minion.update")
    sudo("salt '*' state.highstate")
