/*
When using a list of strings, the each.key and each.value fields are the same thing.
But when we pass in a map of objects,
the each.key refers to the name,
and the  each.value is an array of the values which can be accessed as shown below
*/

resource "aws_sqs_queue" "message_queue" {
#  count          = length(var.sqs_names)
  for_each = var.sqs_data

  name           = format("%s.fifo", each.key)
  delay_seconds = each.value["delay"]
  max_message_size = each.value["max_msg_size"]
  fifo_queue     = true
  tags = {
    Environment = each.value["environment"]
  }
}