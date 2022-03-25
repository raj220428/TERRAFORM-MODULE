# Get latest AMI ID for Amazon Linux2 OS
data "aws_ami" "amzlinux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}





/*{"ID":"1d10f1b4-8e9c-e1d8-dabe-4f4a3317622c",
"Operation":"OperationTypeApply",
"Info":"",
"Who":"LAPTOP-SLVO81LS\\Rajkdas@LAPTOP-SLVO81LS",
"Version":"1.1.5","Created":"2022-03-18T14:16:35.5105502Z","Path":"terraform.tfstate"}*/






