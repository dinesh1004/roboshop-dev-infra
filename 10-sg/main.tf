module "vote_service_sg" {
  source = "terraform-aws-modules/security-group/aws"
  use_name_prefix = false
  name        = "${local.common_name_suffix}-catalogue"
  description = "Security group for catalogue with custom ports open within VPC, egress all traffic"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value
}