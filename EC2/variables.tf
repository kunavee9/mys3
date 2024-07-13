variable "instance_name" {
        description = "Name of the instance to be created"  
}

variable "subnet_id"{
    description = "public_subnet to be created"
}

variable "instance_type" {
        description = "Name of the instance type to be created"
}

variable "ami_id" {
        description = "The AMI to use"
}

variable "number_of_instances" {
        description = "number of instances to be created"
}



