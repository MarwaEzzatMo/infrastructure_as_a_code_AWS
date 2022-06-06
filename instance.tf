resource "aws_instance" "web_1" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type_1
  key_name               = aws_key_pair.my_key.id
  vpc_security_group_ids = [aws_security_group.sec_group.id]
  subnet_id              = aws_subnet.public_subnet_1.id
  user_data              = file("user_data.tpl")

  tags = {
    Name = "my_ins_1"
  }

  root_block_device {
    volume_size = 10
  }
}


resource "aws_instance" "web_2" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type_2
  key_name               = aws_key_pair.my_key.id
  vpc_security_group_ids = [aws_security_group.sec_group.id]
  subnet_id              = aws_subnet.public_subnet_2.id
  user_data              = file("user_data.tpl")

  tags = {
    Name = "my_ins_2"
  }

  root_block_device {
    volume_size = 10
  }
}



resource "aws_instance" "web_3" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type_1
  key_name               = aws_key_pair.my_key.id
  vpc_security_group_ids = [aws_security_group.sec_group.id]
  subnet_id              = aws_subnet.private_subnet_1.id
  user_data              = file("user_data.tpl")

  tags = {
    Name = "my_ins_3"
  }

  root_block_device {
    volume_size = 10
  }
}

resource "aws_instance" "web_4" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type_2
  key_name               = aws_key_pair.my_key.id
  vpc_security_group_ids = [aws_security_group.sec_group.id]
  subnet_id              = aws_subnet.private_subnet_2.id
  user_data              = file("user_data.tpl")

  tags = {
    Name = "my_ins_4"
  }

  root_block_device {
    volume_size = 10
  }
}