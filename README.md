# Terraform-AWS
Creating AWS resources (EC2, SG) using terraform

- generate ssh-key
- assign key to instance
- create a SG and assign it to the instance

For Access_key and Secret_key
    Use the aws configure option to set the them by using env variables option. Both Windows and Linux use the following command
aws configure 

Make sure the public and private key files are in the same directory as the terraform files
