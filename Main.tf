provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformjulytest24" {
  bucket ="terraformjulytest24"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraformjulytest24"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}