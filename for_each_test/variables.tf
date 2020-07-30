variable "sqs_names" {
  type  = list(string)
}

variable "sqs_data" {
  type = map(object({
    delay = number
    max_msg_size = number
    environment = string
  }))
}