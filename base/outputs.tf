output "web_elb_id" {
  description = "web elb id"
  value       = "${aws_s3_bucket.web_elb.id}"
}

output "public_security_group_id" {
  description = "public security group id"
  value       = "${aws_s3_bucket.public_security_group.id}"
}

output "private_security_group_id" {
  description = "private security group id"
  value       = "${aws_s3_bucket.private_security_group.id}"
}
