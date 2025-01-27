variable "region" {
  type    = string
  default = "us-east-1"
}

variable "bucket_name" {
  type = string
}

variable "default_root_object" {
  type    = string
  default = "index.html"
}
