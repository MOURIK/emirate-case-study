variable "vpc_id" {
    type = string
    default = "111111111"
}

variable "target_group_name" {
    type = string
    default = "tf-example-lb-tg"
}
variable "target_group_port" {
    type = number
    default = 80
}

variable "target_group_protocol" {
    type = string
    default = HTTP
}