resource "aws_sqs_queue" "queue" {
  name                      = var.sqs_queue_name"
  delay_seconds             = 90
  maximum_queue_size        = 1000
  message_retention_seconds = 86400
  visibility_timeout_seconds = 180

  tags = {
    Environment = "dev"
  }
}