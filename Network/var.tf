variable "AWS_REGION" {    
    default = "us-east-2"
}

variable "AMI" {
    type = "map"
    
    default {
        us-east-2 = "ami-0443305dabd4be2bc"
    }
}





