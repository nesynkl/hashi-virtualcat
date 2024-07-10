variable "instance_type" {
  description = "Specifies the AWS instance type."
  type        = string
  default     = "t2.micro"
}

variable "region" {
  description = "Specifies the AWS region."
  type        = string
  default     = "us-west-2"
}
