data "aws_region" "current" {
  current = true
}

resource "aws_dynamodb_table" "dynamodb_table" {
  hash_key         = "data_ingress"
  name             = "${var.table_name}"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"
  read_capacity    = 1
  write_capacity   = 1

  attribute {
    name = "data_ingress"
    type = "B"
  }

  tags {
    Region      = "${data.aws_region.current.name}"
    Environment = "${var.environment}"
  }
}
