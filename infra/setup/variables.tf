variable "tf_state_bucket" {
  description = "Name of the S3 bucket in AWS for storing TF state"
  default     = "devops-app-tf-state-1"
}

variable "tf_state_lock_table" {
  description = "Name of the DynamoDB table for TF state locking"
  default     = "devops-tf-lock"
}

variable "project" {
  description = "Project name for tagging the resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Conatact name for tagging resources"
  default     = "vada@example.com"
}