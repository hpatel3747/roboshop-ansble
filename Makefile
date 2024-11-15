default:
	@git pull &>/dev/null
	ansible-playbook -i $(component)-$(env).hptldevops.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e env=$(env) -e app_name=$(component) roboshop.yml