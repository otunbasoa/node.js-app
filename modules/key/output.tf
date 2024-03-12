/*output "key_name" {
  value = aws_key_pair.client_key.key_name
}*/

output "key_name" {
  value = data.aws_key_pair.client_key.key_name
}
