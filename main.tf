terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Sandhyaorg"

    workspaces {
      name = "terrcloud"
    }
  }
   }
   provider "aws" {
       region = "ap-south-1"
       access_key = var.access-key
        secret_key = var.secret-key
   }
    resource "aws_s3_bucket" "test2" {
        bucket_prefix = "test2-"
    }
