output "alb_dns_name" {
  description = "Public URL of the ALB"
  value       = module.alb.alb_dns
}
