# Terraform Demo with GitHub Actions

This repo demonstrates:
- Terraform (Community Edition)
- GitHub Actions CI/CD
- AWS deployment (S3 bucket)

## Workflow
- PR → runs `terraform plan`
- Merge to main → runs `terraform apply`

## Setup
1. Add GitHub Secrets:
   - AWS_ACCESS_KEY_ID
   - AWS_SECRET_ACCESS_KEY
   - AWS_REGION
   - TF_VAR_bucket_name

## Notes
- Uses local state (demo only)
- Do NOT use in production without remote backend
