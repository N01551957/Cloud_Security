data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

data "vault_generic_secret" "aws_access_key_id" {
  path = "secret/aws_access_key_id"
}

data "vault_generic_secret" "aws_secret_access_key" {
  path = "secret/aws_secret_access_key"
}

data "vault_kv_secret_v2" "TestingVault" {
  mount = "secret"
  name  = "aws_secret_access_key"
}
