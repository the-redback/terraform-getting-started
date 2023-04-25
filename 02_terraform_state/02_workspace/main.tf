terraform {
  backend "s3" {
    bucket         = "tf-state-m29"
    key            = "workspaces-example/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

resource "aws_instance" "example" {
  ami = "ami-0fb653ca2d3203ac1"
  #   instance_type = "t2.micro"
  instance_type = terraform.workspace == "default" ? "t2.medium" : "t2.micro"
}

