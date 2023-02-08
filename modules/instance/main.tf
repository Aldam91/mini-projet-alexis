
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  type    = string
  default = "ec2-alexis"
}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "myec2" {
  ami= data.aws_ami.app_ami.id
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }

  connection {
     type = "ssh"
     user = "ec2-aleexis"
     private_key = file("./alexis-ensup.pem")
     host = self.public_ip
   }

   
   root_block_device {
    delete_on_termination = true
  }
}

resource "aws_eip" "lb" {
  instance = aws_instance.myec2.id
  vpc      = true
  provisioner "local-exec" {
    command = "echo PUBLIC IP: ${aws_eip.lb.public_ip} ; ID: ${aws_instance.myec2.id} ; AZ: ${aws_instance.myec2.availability_zone}; >> infos_ec2.txt"
  }
}
