resource "aws_iam_group" "group" {
  name = "Terra_group_policy"
}

resource "aws_iam_policy" "policy" {
  name        = "terra_policy"
  description = "A test policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "terra_grouptopolicy" {
  name       = "test-attachment_group_policy"
  groups     = ["${aws_iam_group.group.name}"]
  policy_arn = "${aws_iam_policy.policy.arn}"
}