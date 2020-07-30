/*
When using a list of strings, the each.key and each.value fields are the same thing.
But when we pass in a map of objects,
the each.key refers to the name,
and the  each.value is an array of the values which can be accessed as shown below
*/

sqs_names = [
  "bharath_test_one",
  "bharath_test_one_again",
  "bharath_test_two",
  "bharath_test_three",
  "bharath_test_four",
  "bharath_test_five"]

sqs_data = {
  bharath_test_one = {
    delay = 10
    max_msg_size = 1024
    environment = "dev"
  },
  bharath_test_two = {
    delay = 10
    max_msg_size = 2048
    environment = "test"
  },
  bharath_test_three = {
    delay = 5
    max_msg_size = 4096
    environment = "prod"
  },
}