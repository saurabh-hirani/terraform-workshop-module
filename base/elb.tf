resource "aws_s3_bucket" "web_elb" {
  bucket = "${var.userid}-${var.workshop_tag}-${var.env}-web-elb"

  tags {
    Name      = "${var.userid}-${var.workshop_tag}-${var.env}-web-elb"
    vpc       = "${var.vpc_id}"
    from_port = "${var.https_port}"
    to_port   = "${var.https_port}"
    cidr      = "0.0.0.0/0"
    subnet    = "${var.public_subnet_id}"
  }

  versioning {
    enabled = true
  }
}
