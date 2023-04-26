terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "tf-state-m29"
    key    = "prod/data-stores/mysql/terraform.tfstate"
    region = "us-east-2"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-2"
}

module "data_stores" {
  source = "../../../modules/data-stores/mysql"

  cluster_name = "prod_mysql"
  db_username  = var.db_username
  db_password  = var.db_password
}
