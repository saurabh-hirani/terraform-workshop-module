variable "userid" {
  description = "participant user id"
}

variable "env" {
  description = "infra environment"
}

variable "instance_count" {
  description = "web instance count"
  default     = 2
}

variable "workshop_tag" {
  description = "terraform workshop tag"
}
