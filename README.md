# ceph15_ansible
CentOS Linux release 8.1.1911部署ceph15 octopus bluestore-HDD&amp;NVME

部署集群
ansible-playbook site.yml -vvv -e 'ansible_python_interpreter=/usr/bin/python3'

清除ceph集群
ansible-playbook  infrastructure-playbooks/purge-cluster.yml -e 'ansible_python_interpreter=/usr/bin/python3'
