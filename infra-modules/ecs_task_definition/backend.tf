terraform {
  backend "s3" {
    bucket         = "tfstate-bucket"
    key            = "dev/ecs_task_definition.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform_state_lock" # Using a DynamoDB lock to disable concurrent access to the tfstate
  }
}