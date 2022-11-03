resource "aws_iam_user" "publisher" {
  name = "ecr-publisher"
  path = "/serviceaccounts/"
}

resource "aws_iam_access_key" "publisher" {
  user = aws_iam_user.publisher.name
}
