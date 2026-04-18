variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}

variable "name_prefix" {
  description = "Prefix for naming all resources"
  type        = string
  default     = "Django-app"
}

variable "vpc_id" {
  type = string
}