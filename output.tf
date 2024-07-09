# Outputs file
output "1_create_key" {
  value     = "echo -e \"${tls_private_key.hashicat.private_key_pem}\" > ./private_key.pem"
  sensitive = true
}

output "2_permissions" {
  value = "chmod 600 ./private_key.pem"
}

output "3_ssh_command" {
  value = "ssh -i ./private_key.pem ubuntu@${aws_eip.hashicat.public_dns}"
}

output "private_key" {
  value     = tls_private_key.hashicat.private_key_pem
  sensitive = true
}
