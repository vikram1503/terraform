resource "aws_instance" "db" {

    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-07832342d5cdd6bb4"]
    instance_type = "t3.micro"
    tags = {
        Name = "datasourcepractice"
    }
}