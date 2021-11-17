resource "aws_route53_record" "jenkins" {
  zone_id = "Z04981151OUIFRU0JAMGK"
  name    = "jenkins.mustbfit.com"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.JenkinsEC2.public_ip]
}
# alias {
#     name                   = aws_s3_bucket.b.website_domain
#     zone_id                = aws_s3_bucket.b.hosted_zone_id
#     evaluate_target_health = false
#   }
# }