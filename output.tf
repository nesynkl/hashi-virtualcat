# Outputs file
output "ssh_command" {
  value = "ssh -i ./private_key.pem ubuntu@${aws_eip.hashicat.public_dns}"
}

output "create_key" {
  value     = "echo -e \"${tls_private_key.hashicat.private_key_pem}\" > ./private_key.pem"
  sensitive = true
}

output "private_key" {
  value     = tls_private_key.hashicat.private_key_pem
  sensitive = true
}
