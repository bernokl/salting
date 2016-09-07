from fabric.api import *

env.key_filename='/home/ubuntu/.ssh/id_f70ba16b1ff4f07b9004d16026b4fb2f'
env.user='root'
env.hosts=['104.131.88.230']

def run_highstate_prod():
    sudo("salt 'salt-master*' state.sls salt-master-digo.update-repos")
    sudo("salt 'prod*' state.highstate")

def run_highstate_dev():
    sudo("salt 'salt-master*' state.sls salt-master-digo.update-repos")
    sudo("salt 'dev*' state.highstate")

def test_run_highstate_dev():
    sudo("salt 'dev*' state.highstate test=True")

def test_run_highstate_prod():
    sudo("salt 'prod*' state.highstate test=True")
