resource "aws_lb_target_group" "tg" {
    name     = var.target_group_name
    port     = var.target_group_port
    protocol = var.target_group_protocol
    vpc_id   = data.aws_vpc.my_vpc.id
}
