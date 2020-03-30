variable "remote_state_s3" {
  type = string
  description = "The s3 to store remote state"
  default = "terraform-remotestate-bucket"
}
variable "dynamodb_state_lock" {
  type = string
  description = "The dynamodb table used to lock state"
  default = "dynamodb-terraform-state-lock"
}