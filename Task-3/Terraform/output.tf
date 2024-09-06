output "instance_id" {
  value = aws_instance.web.id
}
output "EC2_Pub_IP" {
  value = aws_instance.web.public_ip
}
output "EC2_PVT_IP" {
  value = aws_instance.web.private_ip
}

