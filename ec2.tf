
resource "aws_instance" "test_ec2" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_pair

    tags = {
        Name = "EC2"
    }
  }

