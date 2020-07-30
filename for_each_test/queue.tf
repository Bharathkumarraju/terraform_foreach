resource "aws_sqs_queue" "message_queue" {
#  count          = length(var.sqs_names)
  for_each = toset(var.sqs_names)

  name           = format("%s.fifo", each.key)
  fifo_queue     = true
}