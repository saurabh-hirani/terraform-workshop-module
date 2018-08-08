resource "aws_s3_bucket" "web_instances" {
  count  = "${var.instance_count}"
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-web-instance-${count.index + 1}"

  tags {
    Name           = "${var.userid}-${var.workshop_tag}-${var.env}-web-instance-${count.index + 1}"
    vpc            = "${aws_s3_bucket.vpc.id}"
    subnet         = "${aws_s3_bucket.private_subnet.id}"
    elb            = "${aws_s3_bucket.web_elb.id}"
    security_group = "${aws_s3_bucket.private_security_group.id}"
  }

  versioning {
    enabled = true
  }
}
