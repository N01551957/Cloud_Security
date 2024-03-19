provider "aws" {
  region  = "us-east-1"
  profile = "terraform_user"
}

provider "vault" {
  address = "http://127.0.0.1:8200"
}
