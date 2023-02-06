locals {
  common_tags = {
    "Manage_by"   = "Terraform"
    "Project"     = var.project_name
    "Environment" = var.env
  }

  # user_data = <<-EOT
  #   #!/usr/bin/env bash
  #   apt update -y
  #   apt install nginx -y
  #   systemctl start nginx
  #   systemctl enable nginx
  #   echo "<h1> Hello from $(hostname -f)</h1>" > /var/www/html/index.html
  #   EOF
  # EOT


  name_prefix = "${var.project_name}-${var.env}"
}
