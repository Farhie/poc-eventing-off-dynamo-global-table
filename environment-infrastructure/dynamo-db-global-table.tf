module "dynamodb_global_table_us_east_1" {
  source      = "../modules/aws-dynamodb-ingress-table/"
  environment = "${var.environment}"
  table_name  = "${var.environment}-${var.ingress_table_name}"
}

module "dynamodb_global_table_us_west_2" {
  source      = "../modules/aws-dynamodb-ingress-table/"
  environment = "${var.environment}"
  table_name  = "${var.environment}-${var.ingress_table_name}"

  providers = {
    aws = "aws.us-east-1"
  }
}

resource "aws_dynamodb_global_table" "global_table" {
  depends_on = ["module.dynamodb_global_table_us_east_1", "module.dynamodb_global_table_us_west_2"]

  name = "${var.environment}-${var.ingress_table_name}"

  replica {
    region_name = "${module.dynamodb_global_table_us_west_2.region}"
  }

  replica {
    region_name = "${module.dynamodb_global_table_us_east_1.region}"
  }
}
