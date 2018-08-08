output "web_instances" {
  description = "Web instance ids"
  value       = "${aws_s3_bucket.web_instances.*.id}"
}
