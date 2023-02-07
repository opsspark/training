resource "aws_instance" "mytestserver" {
  ami           = "ami-0b7e55206a0a22afc"
  instance_type = "t3.micro"

  vpc_security_group_ids = [ aws_security_group.allow_http_https.id]

  user_data = var.user_data
  
  tags      = local.common_tags
}
