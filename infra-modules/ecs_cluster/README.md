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
| [aws_cloudwatch_log_group.example](https://registry.terraform.io/providers/hashicorp/aws/3.57.0/docs/resources/cloudwatch_log_group) | resource |
| [aws_ecs_cluster.test](https://registry.terraform.io/providers/hashicorp/aws/3.57.0/docs/resources/ecs_cluster) | resource |
| [aws_kms_key.example](https://registry.terraform.io/providers/hashicorp/aws/3.57.0/docs/resources/kms_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ecs_cluster_name"></a> [ecs\_cluster\_name](#input\_ecs\_cluster\_name) | n/a | `string` | `"dev_ecs_cluster"` | no |

## Outputs

No outputs.
