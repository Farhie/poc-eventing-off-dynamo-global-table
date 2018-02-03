provider "aws" {
  region                  = "us-west-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "default"
}

terraform {
  required_version = "0.11.3"
}
