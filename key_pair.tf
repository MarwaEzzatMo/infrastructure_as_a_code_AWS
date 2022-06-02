resource "aws_key_pair" "my_key" {
  key_name   = "mykey"
  public_key = file("~/.ssh/mykey.pub")
}
