module "VPC" {
  source             = "./VPC"
  main_vpc_cidr      = "10.0.0.0/24"
  public_subnet_one  = "10.0.0.128/26"
  private_subnet_one = "10.0.0.192/26"
}

# module "EC2" {
#   source              = "./EC2"
#   ami_id              = "ami-04b4d3355a2e2a403"
#   number_of_instances = 1
#   instance_name       = "myinstance"
#   instance_type       = "t2.micro"
#   subnet_id           = module.VPC.public_subnet_out
#   depends_on          = [module.VPC]
# }
# resource "aws_security_group" "main"{
# dynamic "ingress" {
#       for_each = var.ingress_ports
#       content {
#         from_port   = ingress.value
#         to_port     = ingress.value
#         protocol    = "tcp"
#         cidr_blocks = [ "0.0.0.0/0" ]
#       }
#     }
#     dynamic "egress" {
#         for_each = var.egress_ports
#         content {
#             from_port   = egress.value
#             to_port     = egress.value
#             protocol    = "tcp"
#             cidr_blocks = [ "0.0.0.0/0" ]
#         }
#     }
# }
# module "S3" {
#   source      = "./S3"
#   bucket_name = "terraforms3"
# }


