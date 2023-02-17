#######################################################################
#   ╦  ╦┌─┐┬─┐┬┌─┐┌┐ ┬  ┌─┐┌─┐
#   ╚╗╔╝├─┤├┬┘│├─┤├┴┐│  ├┤ └─┐
#    ╚╝ ┴ ┴┴└─┴┴ ┴└─┘┴─┘└─┘└─┘
#######################################################################

variable "aws_region" {
  description = "AWS Region"
  default     = "eu-west-1"
}

variable "vpc_name" {
  type = string
  default = "vpc1"
}

variable "vpc_address_space" {
  type = string
  default = "10.0.0.0/24"
}


#variable "availability_zones" {
#  default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
#}
#
#
#variable "subnet_cidr_blocks" {
#  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#}

