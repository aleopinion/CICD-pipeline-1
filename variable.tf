# Dev Instance Name
variable "dev-gce-instance-name" {  
  default = "opinion-dev"
}

# Dev Instance Machine Type
variable "dev-gce-instance-machine-type" {  
  default = "e2-medium"
}

# Dev Instance Availability Zone - AZ
variable "dev-gce-instance-az" {
  default = "us-central1-a"
}

# Dev Instance Machine Image
variable "dev-gce-instance-machine-image" {  
  default = "debian-cloud/debian-11"
}

#Dev Instance Network
variable "dev-gce-instnace-network" {  
  default = "default"
}

#Dev Instance Network
variable "dev-gce-static-ip-address" {  
  default = "static-ip-address"
}

#Storage Bucket Name
variable "storage-bucket-name" {  
  default = "tf-jenkins-bucket"
}

#Storage Bucket Location
variable "storage-bucket-location" {  
  default = "US"
}

#Storage Bucket Force Destroy
variable "bucket-force-destroy" {  
  default = "true"
}

#Storage Bucket Versioning
variable "bucket-versioning" {  
  default = "true"
}

#Bucket Life-Cycle Rule - In Days
variable "bucket-life-cycle-rule-in-days" {  
  default = "30"
}

#Bucket Storage Class
variable "bucket-storage-class" {  
  default = "ARCHIVE"
}

