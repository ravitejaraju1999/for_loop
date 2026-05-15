resource "aws_route53_record" "roboshop" {
  for_each = aws_instance.terraform
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" #mongodb.raviteja.store
  type    = "A"
  ttl     = 300
  records = [each.value.private_ip] # it returns private ip of each instance based on for each loop
  allow_overwrite = true
}