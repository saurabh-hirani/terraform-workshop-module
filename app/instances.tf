resource "aws_s3_bucket" "web_instances" {
  count  = "${var.instance_count}"
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-web-instance-${count.index + 1}"

  tags {
    Name           = "${var.userid}-${var.workshop_tag}-${var.env}-web-instance-${count.index + 1}"
    vpc            = "${var.vpc_id}"
    subnet         = "${var.private_subnet_id}"
    elb            = "${var.web_elb_id}"
    security_group = "${var.security_group_id}"
  }

  versioning {
    enabled = true
  }
}
