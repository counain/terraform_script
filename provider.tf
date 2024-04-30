provider "aws" {
 region = "ap-south-1"
 access_key = "AKIA2CCD3R2CNTEVMH56"
 secret_key = "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"
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
