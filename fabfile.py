from fabric.api import *

env.key_filename='~/.ssh/id_salt-master'
env.user='root'
env.hosts=['104.236.137.236']

def run_highstate_prod():
    sudo("salt 'salt-master*' state.highstate")
    sudo("salt 'prod*' state.highstate")

def test_run_highstate_prod():
    sudo("salt 'prod*' state.highstate test=True")

def run_highstate_dev():
    sudo("salt 'salt-master*' state.highstate")
    sudo("salt 'dev*' state.highstate")

def test_run_highstate_dev():
    sudo("salt 'dev*' state.highstate test=True")
