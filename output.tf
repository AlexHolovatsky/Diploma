output "ami_id" {
  value = "ami-0d37e07bd4ff37148"
}

#output "azs" {
#  value = data.aws_availability_zones.azs.*.names
#}

output "access" {
  value = "http://${aws_instance.ec2.public_ip}/index.php"
}
