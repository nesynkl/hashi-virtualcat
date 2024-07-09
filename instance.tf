data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    #values = ["ubuntu/images/hvm-ssd/ubuntu-disco-19.04-amd64-server-*"]
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "hashicat" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.hashicat.key_name
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.hashicat.id
  vpc_security_group_ids      = [aws_security_group.hashicat.id]

  tags = {
    Name = "${random_string.preffix.result}-hashicat-instance"
  }
}

resource "tls_private_key" "hashicat" {
  algorithm = "ED25519"
}

locals {
  private_key_filename = "${random_string.preffix.result}-ssh-key.pem"
}

resource "aws_key_pair" "hashicat" {
  key_name   = local.private_key_filename
  public_key = tls_private_key.hashicat.public_key_openssh
  # public_key = var.public_key
}
