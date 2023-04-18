## To make this work, use a two-step process:

- Write Terraform code to create the S3 bucket and DynamoDB table, and deploy that code with a local backend.

- Go back to the Terraform code, add a remote backend configuration to it to use the newly created S3 bucket and DynamoDB table, and run terraform init to copy your local state to S3.

## If you ever wanted to delete the S3 bucket and DynamoDB table, you’d have to do this two-step process in reverse:

- Go to the Terraform code, remove the backend configuration, and rerun terraform init to copy the Terraform state back to your local disk.

- Run terraform destroy to delete the S3 bucket and DynamoDB table.