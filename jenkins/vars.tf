#
# String Variable
#
variable "region" {
  type        = string
  description = "Provide a region for instances"
  default     = "us-east-1"
}
#
# String Variable
#
variable "ssh_key_name" {
  type        = string
  description = "Provide a key pair name for instances"
  default     = "jenk_key"
}
#
# String Variable
#
variable "instance_type" {
  type        = string
  description = "Provide instances type"
  default     = "t2.micro"
}
#
# String Variable
#
variable "sec_group_name" {
  type        = string
  description = "Provide a sec group name for instances"
  default     = "JenkinsSG"
}