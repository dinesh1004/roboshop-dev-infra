resource "aws_instance" "bastian" {
  ami           = local.ami_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [local.sg_id]
  subnet_id = local.public_subnet_id

  tags = merge(
    local.common_tags,
    {
        Name = "${var.project_name}-${var.environment}-bastion"
    }

  )
}