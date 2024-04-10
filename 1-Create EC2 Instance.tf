# Frist You have to provide the provider info like cloud provider, region, access_key and secret_key

provider "aws" {
  region = "ap-south-1"
  
}

# Type "aws config" to mention access_key and secret_key

# You can give the provider by hard code also like folowing but its not a good practice for security reasons:

#                    provider "aws" {
#                         region     = "us-west-2"
#                         access_key = "my-access-key"
#                         secret_key = "my-secret-key"
#                    }

# Basic syntax for terraform script:

#                   <Resource_type> <Service_type> <Unique_name_you_want_to_provide>{
#                          <Identifier> = <Expression>
#                   }

resource "aws_instance" "one" {
  ami           = "ami-007020fd9c84e18c7"
  instance_type = "t2.micro"
}


# This script will form you a basic t2.micro instance on AWS 
