resource "aws_iam_role_policy_attachment" "role_policy_attachment_N01551957" {
  role       = aws_iam_role.role_N01551957.name
  policy_arn = aws_iam_policy.policy_N01551957.arn
}
