output "jenkins_username" {
  value = "admin"
}

output "jenkins_password" {
  value = "redhat"
}

#output "jenkins_endpoint" {
#  value = formatlist("http://%s:%s/", aws_instance.JenkinsEC2.*.public_ip, "8080")
#}

output "jekins_URL" {
  value = aws_route53_record.jenkins.name
}