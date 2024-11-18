default:
	@git pull &>/dev/null
	ansible-playbook -i $(component)-$(env).hptldevops.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e env=$(env) -e component=$(component) roboshop.yml

 /usr/local/bin/ansible-pull -i localhost, -U https://github.com/hpatel3747/roboshop-ansible roboshop.yml -e env=dev -e component=mongodb