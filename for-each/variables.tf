variable "instance_names" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"

    }
    
}

variable "common_tags" {
    type = map
    default = {
        project = "expense"
        terraform = "true"
    }
}

variable "domain_name" {
    default = "imvicky.online"
}

variable "zone_id" {
    default = "Z01109981TZN8CSWE7N4F"
}