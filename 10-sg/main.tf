/* module "vote_service_sg" {
  source = "terraform-aws-modules/security-group/aws"
  use_name_prefix = false
  name        = "${local.common_name_suffix}-catalogue"
  description = "Security group for catalogue with custom ports open within VPC, egress all traffic"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value
} */
module "sg" {
    count = length(var.sg_names)
    source = "git::https://github.com/dinesh1004/terraform-aws-sg.git"
    project_name = var.project_name
    environment = var.environment
    sg_description = "created for ${var.sg_names[count.index]}"
    sg_name = var.sg_names[count.index]
    vpc_id = local.vpc_id

}