module "ec2" {
  source = "./modules/ec2"

  # Define input variables for EC2 module
  instance_type     = "t2.micro"
  ami               = "ami-001843b876406202a"
  subnet_id         = "subnet-072a13936e1eda06f"
  key_name          = "mumbai"
  security_group_id = module.sg.security_group_id
}

module "sg" {
  source = "./modules/sg"

  # Define input variables for security group module
  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

module "s3" {
  source = "./modules/s3"

  # Define input variables for S3 module
  bucket_name        = "backend-1042"
  enable_versioning  = true
  sse_algorithm      = "AES256"
}

module "dynamodb" {
  source = "./modules/dynamodb"

  # Define input variables for DynamoDB module
  table_name = "state-lock"
  hash_key   = "LockID"
}

