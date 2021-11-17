resource "null_resource" "jenkins_install" {
  depends_on = [aws_instance.JenkinsEC2, aws_security_group.JenkinsSG]
  triggers = {
    always_run = timestamp()
  }


  provisioner "remote-exec" {
    connection {
      host        = aws_instance.JenkinsEC2.public_ip
      type        = "ssh"
      user        = "centos"
      private_key = file("~/.ssh/id_rsa")
    }
    #run jenkins_install.sh file 
    #script = "jenkins_install.sh"

    #run the following commands
    inline = [
      "sudo yum install -y jenkins java-11-openjdk-devel",
      "sudo yum -y install wget",
      "sudo wget --no-check-certificate -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo",
      "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
      "sudo yum upgrade -y",
      "sudo yum install epel-release -y",
      "sudo yum install jenkins -y",
      "sudo systemctl start jenkins",
    ]
  }
}