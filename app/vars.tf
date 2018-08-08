variable "userid" {
  description = "participant user id"
}

variable "env" {
  description = "infra environment"
}

variable "vpc_id" {
  description = "vpc id"
}

variable "workshop_tag" {
  description = "terraform workshop tag"
}

variable "instance_count" {
  description = "web instance count"
  default     = 2
}

variable "private_subnet_id" {
  description = "private subnet id"
}

variable "web_elb_id" {
  description = "web elb id"
}

variable "security_group_id" {
  description = "security group id"
}
