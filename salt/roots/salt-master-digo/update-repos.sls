get_prod_repo:
  git.latest:
    - name: https://github.com/bernokl/salting.git
    - rev: master
    - target: /root/salting-prod/

get_dev_repo:
  git.latest:
    - name: https://github.com/bernokl/salting.git
    - rev: dev
    - target: /root/salting-dev/
