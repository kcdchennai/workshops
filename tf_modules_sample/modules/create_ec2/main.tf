resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  count = var.instance_count_needed ? var.instance_count : 1

  user_data = <<-EOF
  #!/bin/bash
  echo "This script was executed from user_data"
  EOF

  tags = {
    Name = "ExampleAppServerInstance"
    Purpose = "TerraformBootcamp"
    createdby = "Saravanan Gnanaguru"
  }
}

