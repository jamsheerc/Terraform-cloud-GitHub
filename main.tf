terraform {
    required_version = "~> 1.5.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.33"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "jamsheerinfra" {
	ami = "ami-06b09bfacae1453cb" 
	instance_type = "t2.nano"
}
