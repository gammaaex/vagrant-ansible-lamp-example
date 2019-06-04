sudo yum install -y epel-release
sudo yum install -y ansible
cd /vagrant/playbooks
ansible-playbook -i hosts site.yml
