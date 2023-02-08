variable "volume_size" {
  type    = string
  default = "8"
}

variable "volume_name" {
  type    = string
  default = "terraform-ebs-volume"
}

resource "aws_ebs_volume" "volume" {
  availability_zone = "us-east-1d"
  size              = var.volume_size
  tags = {
    Name = var.volume_name
  }
}