
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| env | infra environment | string | - | yes |
| https_port | public subnet id | string | - | yes |
| public_subnet_id | public subnet id | string | - | yes |
| userid | participant user id | string | - | yes |
| vpc_id | vpc id | string | - | yes |
| workshop_tag | terraform workshop tag | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| private_security_group_id | private security group id |
| public_security_group_id | public security group id |
| web_elb_id | web elb id |

