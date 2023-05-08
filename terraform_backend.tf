terraform {
  backend "s3" {
    bucket = "tringali-joe-management"
    key    = "terraform"
    region = "us-east-1"
  }
}