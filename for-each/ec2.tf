resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami = data.aws_ami.ami_info.id
    instance_type = each.value
    vpc_security_group_ids = ["sg-07832342d5cdd6bb4"]
    tags = merge(
         var.common_tags, 
         {
            Name = each.key
            Module = each.key
         }
    )
}