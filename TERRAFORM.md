
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| env | infra environment | string | - | yes |
| instance_count | web instance count | string | `2` | no |
| userid | participant user id | string | - | yes |
| workshop_tag | terraform workshop tag | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| private_subnet |  |
| public_subnet |  |
| vpc |  |
| web_elb |  |
| web_instances |  |

