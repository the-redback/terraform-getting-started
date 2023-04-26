terraform {
  backend "s3" {
    bucket         = "tf-state-m29"
    key            = "stage/services/webserver-cluster/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-2"
}


module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "tf-state-m29"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"
}
