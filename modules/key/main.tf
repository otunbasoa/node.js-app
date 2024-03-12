/*resource "aws_key_pair" "client_key" {
  key_name   = "client_key"
  public_key = file("../modules/key/new.pub")
}*/

data "aws_key_pair" "client_key" {
  key_name = var.key_name
}

