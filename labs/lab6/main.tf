resource "aws_iam_role" "role_N01551957" {
  name = "role_for_Joseph1957"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_policy" "policy_N01551957" {
  name        = "policy_for_joseph1957"
  path        = "/"
  description = "My test policy"

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

resource "aws_iam_group" "group_N01551957" {
  name = "Humber_group"
}

resource "aws_iam_group_policy_attachment" "group_policy_attachment_N01551957" {
  group      = aws_iam_group.group_N01551957.name
  policy_arn = aws_iam_policy.policy_N01551957.arn
}
resource "aws_iam_role_policy_attachment" "role_policy_attachment_N01551957" {
  role       = aws_iam_role.role_N01551957.name
  policy_arn = aws_iam_policy.policy_N01551957.arn
}
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
