output "vpc_id" {
  value = aws_vpc.main.id
}

output "rds_endpoint" {
  value = aws_db_instance.mysql.endpoint
}

output "nlb_dns" {
  value = aws_lb.public_nlb.dns_name
}

