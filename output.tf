# Outputs file
output "connection" {
  value     = <<SSHCONFIG
  printf \"${tls_private_key.hashicat.private_key_openssh}\" > ./private_key.pem"
  chmod 600 ./private_key.pem
  ssh -i ./private_key.pem ubuntu@${aws_eip.hashicat.public_dns}
  SSHCONFIG
  sensitive = true
}

output "private_key" {
  value     = tls_private_key.hashicat.private_key_openssh
  sensitive = true
}
