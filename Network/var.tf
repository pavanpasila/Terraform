variable "AWS_REGION" {    
    default = "us-east-2"
}

variable "AMI" {
    type = "map"
    
    default {
        us-east-2 = "ami-0443305dabd4be2bc"
    }
}

variable "PRIVATE_KEY_PATH" {
  default = "ohio-region-key-pair"
}

variable "PUBLIC_KEY_PATH" {
  default = "ohio-region-key-pair.pub"
}

variable "EC2_USER" {
  default = "ubuntu"
}




