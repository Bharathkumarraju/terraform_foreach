resource "aws_sqs_queue" "message_queue" {
  count          = length(var.sqs_names)

  name           = format("%s.fifo", element(var.sqs_names, count.index))
  fifo_queue     = true
}