variable "aws_region" {
  type = string
}

variable "alb_arn" {
  description = "The ARN of the ALB you wish to create your listener on"
  type = string
}

variable "lb_listener_port" {
  description = "Load balancer listener ports"
  type = number
}

variable "protocol" {
  description = "Protocol used e.g. HTTP"
  type = string
}

variable "action" {
  description = "Action performed by the LB e.g. forward"
  type = string
}

variable "tg_arn" {
  description = "The ARN of the TG"
  type = string
  default = ""
}

#CERT

variable "path_to_private_key" {
  type = string
  default     = ""
}
variable "path_to_certificate_body" {
  type = string
  default     = ""
  }
  
