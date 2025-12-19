
resource "aws_instance" "test" {
  ami = "testing"
  instance_type = var.instance_type
}