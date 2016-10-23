clean:
	(cd vm_test && vagrant destroy -f)

new:
	# create the VM and run the initial provisionning file
	(cd vm_test && vagrant up ; sleep 10; vagrant halt ; sleep 10; vagrant up ; vagrant provision)

install:
	(cd provisioning && time ansible-playbook -i inventory -vv installation.yml)

vm-up:
	(cd vm_test && vagrant up)
