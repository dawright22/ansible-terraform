##############################################################################
# Outputs File
#
# Expose the outputs you want your users to see after a successful 
# `terraform apply` or `terraform output` command. You can add your own text 
# and include any data from the state file. Outputs are sorted alphabetically;
# use an underscore _ to move things to the bottom. 

output "_instructions" {
  value = "take the name from public_dns and update the ansible inventory http host to work with your instance. Then run ansible-playbook -i ../ansible/inventory.yaml --private-key ${var.ssh_key_path} ../ansible/httpd.yml"
}

output "public_dns" {
  value = "${azurerm_public_ip.tf-ansible-pip.fqdn}"
}

output "App_Server_URL" {
  value = "http://${azurerm_public_ip.tf-ansible-pip.fqdn}"
}
