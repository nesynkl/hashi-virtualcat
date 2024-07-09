<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.57.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | 3.2.2 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.2 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | 4.0.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.57.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.2 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.2 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.hashicat](https://registry.terraform.io/providers/hashicorp/aws/5.57.0/docs/resources/eip) | resource |
| [aws_eip_association.hashicat](https://registry.terraform.io/providers/hashicorp/aws/5.57.0/docs/resources/eip_association) | resource |
| [aws_instance.hashicat](https://registry.terraform.io/providers/hashicorp/aws/5.57.0/docs/resources/instance) | resource |
| [aws_internet_gateway.hashicat](https://registry.terraform.io/providers/hashicorp/aws/5.57.0/docs/resources/internet_gateway) | resource |
| [aws_key_pair.hashicat](https://registry.terraform.io/providers/hashicorp/aws/5.57.0/docs/resources/key_pair) | resource |
| [aws_route_table.hashicat](https://registry.terraform.io/providers/hashicorp/aws/5.57.0/docs/resources/route_table) | resource |
| [aws_route_table_association.hashicat](https://registry.terraform.io/providers/hashicorp/aws/5.57.0/docs/resources/route_table_association) | resource |
| [aws_security_group.hashicat](https://registry.terraform.io/providers/hashicorp/aws/5.57.0/docs/resources/security_group) | resource |
| [aws_subnet.hashicat](https://registry.terraform.io/providers/hashicorp/aws/5.57.0/docs/resources/subnet) | resource |
| [aws_vpc.hashicat](https://registry.terraform.io/providers/hashicorp/aws/5.57.0/docs/resources/vpc) | resource |
| [null_resource.configure-cat-app](https://registry.terraform.io/providers/hashicorp/null/3.2.2/docs/resources/resource) | resource |
| [random_string.preffix](https://registry.terraform.io/providers/hashicorp/random/3.6.2/docs/resources/string) | resource |
| [tls_private_key.hashicat](https://registry.terraform.io/providers/hashicorp/tls/4.0.5/docs/resources/private_key) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/5.57.0/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Specifies the AWS instance type. | `string` | `"t2.micro"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_catapp_ip"></a> [catapp\_ip](#output\_catapp\_ip) | n/a |
| <a name="output_catapp_url"></a> [catapp\_url](#output\_catapp\_url) | Outputs file |
| <a name="output_private_key"></a> [private\_key](#output\_private\_key) | n/a |
| <a name="output_public_key"></a> [public\_key](#output\_public\_key) | n/a |
<!-- END_TF_DOCS -->