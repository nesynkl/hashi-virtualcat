# Outputs file
output "first_create_key" {
  value     = "printf \"${tls_private_key.hashicat.private_key_openssh}\" > ./private_key.pem"
  sensitive = true
}

output "second_permissions" {
  value = "chmod 600 ./private_key.pem"
}

output "third_ssh_command" {
  value = "ssh -i ./private_key.pem ubuntu@${aws_eip.hashicat.public_dns}"
}

output "private_key" {
  value     = tls_private_key.hashicat.private_key_openssh
  sensitive = true
}
