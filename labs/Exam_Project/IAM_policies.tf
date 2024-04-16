resource "aws_iam_policy" "policy_N01551957" {
  name        = "policy_for_joseph1957"
  path        = "/"
  description = "terrafrom vault lab IAM policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
