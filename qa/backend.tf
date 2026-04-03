terraform {
  backend "s3" {
    bucket       = "dev-full-stack-tf-files"
    key          = "qa/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}
