## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.3.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.57.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.57.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lb_listener.front_end](https://registry.terraform.io/providers/hashicorp/aws/3.57.0/docs/resources/lb_listener) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action"></a> [action](#input\_action) | Action performed by the LB e.g. forward | `string` | n/a | yes |
| <a name="input_alb_arn"></a> [alb\_arn](#input\_alb\_arn) | The ARN of the ALB you wish to create your listener on | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | n/a | `string` | n/a | yes |
| <a name="input_lb_listener_port"></a> [lb\_listener\_port](#input\_lb\_listener\_port) | Load balancer listener ports | `number` | n/a | yes |
| <a name="input_path_to_certificate_body"></a> [path\_to\_certificate\_body](#input\_path\_to\_certificate\_body) | n/a | `string` | `""` | no |
| <a name="input_path_to_private_key"></a> [path\_to\_private\_key](#input\_path\_to\_private\_key) | n/a | `string` | `""` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | Protocol used e.g. HTTP | `string` | n/a | yes |
| <a name="input_tg_arn"></a> [tg\_arn](#input\_tg\_arn) | The ARN of the TG | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_"></a> [](#output\_) | The ARN of the HTTP listener (matches arn) |
