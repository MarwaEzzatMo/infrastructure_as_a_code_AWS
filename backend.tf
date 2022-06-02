terraform {
  backend "s3" {
    bucket = "my.bucket.back.end"
    key    = "terraform.tfstate"
    region = "us-east-1"



  }



}



