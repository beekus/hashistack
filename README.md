# DuckyCorp AWS HashiStack

This is the DuckyCorp HashiStack for running Nomad, Consul, and Vault on AWS.

### Usage

- Get credentials for an AWS account.
- `export AWS_ACCESS_KEY_ID=${YOUR_ACCESS_KEY}`
- `export AWS_SECRET_ACCESS_KEY=${YOUR_SECRET_KEY}`
- `terraform apply` (this will take several minutes)
- Access your Hashistack via EC2.
- If running in production, ensure that security groups are restricted beyond the default setup.

### Dependencies

- Terraform 12+
- AWS Account Key and Secret
