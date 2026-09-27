terraform {
  backend "s3" {
    bucket       = "terraform-pipeline-git88"
    key          = "ec2-vpc/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}
