variable "vpc_cidr"{
    default = "10.0.0.0/16"
}

variable "project_name"{
    default = "roboshop"
}

variable "environment"{
    default = "Dev"
}

variable "vpc_tags"{
    default ={
        purpose = "roboshop VPC"
        Dontdelet = "true"
    }
}

variable "public_subnet_cidrs" {

    default = [ "10.0.1.0/24","10.0.2.0/24" ]
  
}

variable "private_subnet_cidrs" {

    default = [ "10.0.11.0/24","10.0.12.0/24" ]
  
}

variable "database_subnet_cidrs" {

    default = [ "10.0.14.0/24","10.0.15.0/24" ]
  
}


