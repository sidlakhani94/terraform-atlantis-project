#!/bin/bash
set -e

# Format the Terraform code
terraform fmt

# Validate the Terraform code
terraform validate -no-color

# Run Checkov for security scanning
/home/ubuntu/.local/bin/checkov -d .

# Run Tflint Commands
tflint --init
tflint
