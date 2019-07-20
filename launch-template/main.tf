provider "aws" {
  region = "${var.region}"
}
data "aws_ami" "bastion" {
  owners = ["self"]
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name   = "tag:Name"
    values = ["${var.name}"]
  }

  most_recent = false
}
resource "aws_launch_template" "bastion" {
  name_prefix   = "asda"
  image_id      = "${data.aws_ami.bastion.id}"
  instance_type = "t2.micro"
}

