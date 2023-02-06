variable "env" {
  default = "dev"
}

variable "project_name" {
  default = "cloudacademy"
}

variable "aws_region" {
  default = "ap-southeast-1"
}

variable "vpc_id" {
  default = "vpc-0ec35540242dab2c9"
}

variable "user_data" {
  type = string
  default = <<-EOT
    #!/usr/bin/env bash
    apt update -y
    apt install nginx -y
    systemctl start nginx
    systemctl enable nginx
    echo "<h1> Hello from $(hostname -f)</h1>" > /var/www/html/index.html
    EOF
  EOT
}
