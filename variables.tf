variable "instances" {
  description = "The number of EC2 instances to create."
  type        = map(string)
  default     = {
    mongodb = "t3.micro",
    "redis" = "t3.micro",
    "mysql" = "t3.small"
    }
}

variable "zone_id" {
  description = "The ID of the Route 53 hosted zone where the record will be created."
  type        = string
  default     = "Z09554163BEIVGQB3DW1S"
}

variable "domain_name" {
  description = "The domain name for the Route 53 record."
  type        = string
  default     = "raviteja.store"
}