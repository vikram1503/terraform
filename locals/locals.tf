locals {
    ami_id = "ami-090252cbe067a9e58"
    sg_id = "sg-07832342d5cdd6bb4"
    #instance_type = "t3.micro"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
    tags = {
        Name = "locals"
    }
}