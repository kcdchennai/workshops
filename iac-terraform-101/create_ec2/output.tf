output "instance_public_ip" {
    value = aws_instance.sample_ec2.public_ip
}