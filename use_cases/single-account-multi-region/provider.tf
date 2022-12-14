provider "aws" {
  alias      = "this"
  region     = "us-east-2"
  access_key = var.aws_this_access_key
  secret_key = var.aws_this_secret_key
}

provider "aws" {
  alias      = "peer"
  region     = "us-east-1"
  access_key = var.aws_this_access_key
  secret_key = var.aws_this_secret_key
}
