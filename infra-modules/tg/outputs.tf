output "tg_arn" {
    value = contains(["HTTP","HTTPS"],var.tg_protocol) ? aws_lb_target_group.tg_alb[0].arn : aws_lb_target_group.tg_nlb[0].arn
    //value = length(aws_lb_target_group.tg_alb) > 0 ? aws_lb_target_group.tg_alb[0].arn : aws_lb_target_group.tg_nlb[0].arn
}

