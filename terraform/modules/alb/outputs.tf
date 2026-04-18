output "alb_arn" {
  value = aws_lb.alb.arn
}

output "alb_dns_name" {
  value = aws_lb.alb.dns_name
}

output "listener_arn" {
  value =aws_lb_listener.http_forward.arn
}
/** USE AFTER ACM AND ROUTE53 IS CREATED
output "listener_arn" {
  value = var.certificate_arn == null
    ? aws_lb_listener.http_forward[0].arn
    : aws_lb_listener.https[0].arn
}
*/