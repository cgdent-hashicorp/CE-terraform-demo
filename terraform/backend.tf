terraform {
  backend "s3" {
    bucket         = "my-terraform-state-craigdent-demo"
    key            = "ce-terraform-demo/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
