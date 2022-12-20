resource "aws_route53_zone_association" "secondary" {
  zone_id = var.PRIVATE_HOSTED_ZONEID
  vpc_id  = aws_vpc.secondary.id
}