variable "prefix" {
  description = "This prefix will be included in the name of most resources."
  type        = string
  default     = "hashicat"
}

variable "address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  type        = string
  default     = "10.0.10.0/24"
}

variable "instance_type" {
  description = "Specifies the AWS instance type."
  type        = string
  default     = "t2.micro"
}

variable "public_key" {
  description = "The public key to use for SSH access to the VM."
  type        = string
  default     = ""
}
