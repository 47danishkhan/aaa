resource "aws_instance" "jenkins_master" {
  ami                    = var.image
  instance_type          = var.image_type
  key_name               = aws_key_pair.my-key.key_name
  vpc_security_group_ids = [aws_security_group.my_sg.id]
}

resource "aws_instance" "jenkins_slave_1" {
  ami                    = var.image
  instance_type          = var.image_type
  key_name               = aws_key_pair.my-key.key_name
  vpc_security_group_ids = [aws_security_group.my_sg.id]
}

resource "aws_instance" "jenkins_slave_2" {
  ami                    = var.image
  instance_type          = var.image_type
  key_name               = aws_key_pair.my-key.key_name
  vpc_security_group_ids = [aws_security_group.my_sg.id]
}