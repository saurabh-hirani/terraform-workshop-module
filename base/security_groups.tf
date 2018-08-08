resource "aws_s3_bucket" "public_security_group" {
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-public-security-group"

  tags {
    Name      = "${var.userid}-${var.workshop_tag}-${var.env}-public-security-group"
    vpc       = "${var.vpc_id}"
    from_port = "${var.https_port}"
    to_port   = "${var.https_port}"
    cidr      = "0.0.0.0/0"
  }

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "private_security_group" {
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-private-security-group"

  tags {
    Name                  = "${var.userid}-${var.workshop_tag}-${var.env}-private-security-group"
    vpc                   = "${var.vpc_id}"
    from_port             = "${var.https_port}"
    to_port               = "${var.https_port}"
    source_security_group = "${aws_s3_bucket.web_elb.id}"
  }

  versioning {
    enabled = true
  }
}
