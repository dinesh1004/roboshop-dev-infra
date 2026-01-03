variable "project_name"{
    type = string
    default = "roboshop"
}

variable "environment" {

    type = string 
    default = "Dev"
  
}

/* variable "vpc_id" {
    type = string

} */


variable "sg_names" {
    type = list 
    default = [#databases
        "mongodb", "redis", "mysql", "rabbitmq",
        #backend
        "catalogue", "user", "cart", "shipping", "payment",
        # frontend
        "frontend",
        # bastion
        "bastion",
        # frontend load balancer
        "frontend_alb"]
  
}

