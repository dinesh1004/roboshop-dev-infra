resource "aws_ssm_parameter" "roboshop-dev-VPC" {
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}