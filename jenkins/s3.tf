# resource "aws_s3_bucket" "b" {
#   bucket = "jenkins.mustbfit.com"
#   acl           = "private"

#   versioning {
#     enabled = true
#   }
# #  You need to add your Jenkins host machine IP to below
#   website {
#     redirect_all_requests_to = "HOSTIP:8080"
#   }
# }