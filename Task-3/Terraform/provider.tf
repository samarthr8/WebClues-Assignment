terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.57.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-bucket-sam-01"					#create an s3 bucket with the given name
    key            = "state/terraform.state"
    region         = "us-east-1"						#specify your region
    dynamodb_table = "tf1"							#create a dynamo db table with the given name
  }
}

provider "aws" {
  region = "us-east-1"								#provide your region
}
