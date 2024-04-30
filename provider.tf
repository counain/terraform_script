provider "aws" {
  region = "ap-south-1"
}


terraform {
 required_version = "~>1.8.0"
  backend "s3" {
    bucket         = "backend-1042"
    key            = "hhaumaprod.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "state-lock"
  }
}
