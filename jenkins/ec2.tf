resource "aws_instance" "JenkinsEC2" {
  instance_type          = var.instance_type
  ami                    = data.aws_ami.centos.id
  vpc_security_group_ids = [aws_security_group.JenkinsSG.id]
  key_name               = var.ssh_key_name
  tags = {
    Name = "terraform-jenkins"
    Team = "Devops"
  }
}









