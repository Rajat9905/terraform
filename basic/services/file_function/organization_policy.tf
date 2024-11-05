resource "aws_organizations_policy" "TF_backup_policy" {
  name     = "TF_backup_policy"
  content  = file("D:/Study/10_04_2024/Terraform/code/policy copy.json")
  type     = "BACKUP_POLICY"
}

resource "aws_organizations_policy_attachment" "attach_backup_policy" {
  policy_id = aws_organizations_policy.TF_backup_policy.id
  target_id = "ou-ayhy-4wudvae0"
}
