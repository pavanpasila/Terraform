output "myvpc" {
value = aws_vpc.prod-vpc.id
}
output "ec2ip" {
value = aws_instance.web1.public_ip
}
