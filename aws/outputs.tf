output "ec2_instance_name" {
    description = "Print EC2 instance(s) name(s) and public IP addess(es)."
    value = [
        aws_instance.ec2_instance.*.tags,
        aws_instance.ec2_instance.*.public_ip
    ]
}