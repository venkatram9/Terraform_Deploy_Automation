variable "prefix" {
  description = "Prefix for resources in AWS"
  default     = "raa"
}

variable "project" {
  description = "Project name for tagging the resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Conatact name for tagging resources"
  default     = "vada@example.com"
}