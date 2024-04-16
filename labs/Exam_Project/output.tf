output "aws_access_key_id" {
  value = "data.vault_generic_secret.aws_access_key_id.data_json"
}

output "aws_secret_access_key" {
  value = "data.vault_generic_secret.aws_secret_access_key.data_json"
}
