resource "aws_iam_user_group_membership" "adding_user2group" {
  user = "${aws_iam_user.user1.name}"

  groups = [
    "${aws_iam_group.terra_group.name}",
  ]
}

resource "aws_iam_user" "user1" {
  name = "Temi3_teraform"
}

resource "aws_iam_group" "terra_group" {
  name = "Terra_Devop_group"
}