resource "aws_key_pair" "jenk_key" {
  key_name   = "jenk_key"
  public_key = file("~/.ssh/id_rsa.pub")
}