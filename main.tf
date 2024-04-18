########## AWS EC2 Instance ##########

resource "aws_instance" "ec2" {
  count = var.create_ec2_instance ? 1 : 0

  ami                         = var.ami_id
  instance_type               = var.instance_type
  vpc_security_group_ids      = var.vpc_security_group_ids
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  iam_instance_profile        = var.iam_instance_profile
  user_data                   = var.user_data
  availability_zone           = length(regexall("^[a-z]{2}-", element(var.azs, count.index))) > 0 ? element(var.azs, count.index) : null

  root_block_device {
    volume_size           = var.volume_size
    volume_type           = var.volume_type
    delete_on_termination = var.delete_on_termination

    tags = merge({ "Name" = var.volume_name }, var.tags)
  }

  tags = merge({ "Name" = var.instance_name }, var.tags)
}