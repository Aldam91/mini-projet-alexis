provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}


module "ec2_instance" {
  source = "./modules/instance/"
}
module "ebs_volume" {
  source = "./modules/volume/"
}

module "security_group" {
  source = "./modules/security/"
}

