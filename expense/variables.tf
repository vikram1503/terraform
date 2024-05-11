# ec2 variables
variable "instance_names"{
    default = ["db","backend","frontend"]
}     
variable "image_id" {
    type    = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI ID"

}

variable "instance_type" {
    default = "t3.micro" 
    type = string
}

variable "common_tags" {
    default = {
        project = "Expense"
        Environment =  "Dev"
        Terraform = "true"
       
    }
}

# sg_variables

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"

}

variable "ssh_port" {
    default = 22

}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

# r53_variables
variable "zone_id" {
    default = "Z01109981TZN8CSWE7N4F"
}

variable "domain_name" {
    default = "imvicky.online"
}