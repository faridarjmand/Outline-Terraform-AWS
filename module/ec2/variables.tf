variable "image_id" {
  default     = "ami-01cd4de4363ab6ee8"
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
  validation {
    condition     = can(regex("^ami-", var.image_id))
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}
variable "instance_type" {
  default = "t2.micro"
  type    = string
}
variable "createdby" {
  default = "Terraform"
}
variable "key_name" {
  description = "SSH Key name created in aws"
  default     = "farid"
}
variable "machine_name" {}

# variable "cidr_block" {
#   description = "CIDR Block"
#   type        = string
# }
variable "availability_zone" {
  default     = "us-west-2a"
  description = "Availability Zones for the Subnet"
  type        = string
}