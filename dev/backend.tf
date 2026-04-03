terraform {
  backend "s3" {
    bucket       = "my-full-stack-tf-files"
    key          = "ec2/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
