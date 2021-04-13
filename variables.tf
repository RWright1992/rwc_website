variable "ami"{
    description = "ami of the ec2 instance"
    type = string
    default = "ami-06fd78dc2f0b69910"
}

variable "instance_type"{
    description = "ec2 instance_type"
    type = string
    default = "t2.micro"
}
