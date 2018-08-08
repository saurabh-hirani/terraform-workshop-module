output "vpc_id" {
  description = "vpc id"
  value       = "${aws_s3_bucket.vpc.id}"
}

output "public_subnet_id" {
  description = "public subnet id"
  value       = "${aws_s3_bucket.public_subnet.id}"
}

output "private_subnet_id" {
  description = "private subnet id"
  value       = "${aws_s3_bucket.private_subnet.id}"
}
