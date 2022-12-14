resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_lambda_function" "simple-lambda-ecr" {
  # If the file is not in the current working directory you will need to include a
  # path.module in the filename.
  function_name = var.labmda_name
  role          = aws_iam_role.iam_for_lambda.arn

  package_type = "Image"

  image_uri = "176265959211.dkr.ecr.us-east-1.amazonaws.com/simple-lambda-ecr:1a7d474c451cb666b89c592b1b6a428a1920ba46"
}
