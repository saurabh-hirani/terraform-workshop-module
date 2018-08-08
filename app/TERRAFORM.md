
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| env | infra environment | string | - | yes |
| instance_count | web instance count | string | `2` | no |
| private_subnet_id | private subnet id | string | - | yes |
| security_group_id | security group id | string | - | yes |
| userid | participant user id | string | - | yes |
| vpc_id | vpc id | string | - | yes |
| web_elb_id | web elb id | string | - | yes |
| workshop_tag | terraform workshop tag | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| web_instances | Web instance ids |

