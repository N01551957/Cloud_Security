provider "aws" {
  region  = "us-east-1"
  #profile = "terraform_user"
}

provider "vault" {
  address = "http://127.0.0.1:8200"
  skip_child_token = true
 
  auth_login {
    path = "auth/approle/login"
 
    parameters = {
      role_id = "3fede4d8-4f4c-77cf-5802-877a4ac19778"
      secret_id = "76c85923-9986-d4fc-ad63-25182e068e51"
    }
  }
}
