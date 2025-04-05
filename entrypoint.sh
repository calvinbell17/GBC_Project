#!/bin/bash
set -e

# Set AWS credentials and region if not using instance profile
export AWS_REGION=${AWS_REGION:-"us-east-1"}
SECRET_NAME=${SECRET_NAME:-"DB"}

echo "Fetching secrets from AWS Secrets Manager..."
SECRET_JSON=$(aws secretsmanager get-secret-value --secret-id "$SECRET_NAME" --region "$AWS_REGION" --query SecretString --output text)

# Parse secrets (example: expecting JSON structure like {"DB_NAME":"wordpress", "DB_USER":"user", "DB_PASS":"pass", "DB_HOST":"host"})
export WORDPRESS_DB_NAME=$(echo "$SECRET_JSON" | jq -r '.DB_NAME')
export WORDPRESS_DB_USER=$(echo "$SECRET_JSON" | jq -r '.DB_USER')
export WORDPRESS_DB_PASSWORD=$(echo "$SECRET_JSON" | jq -r '.DB_PASS')
export WORDPRESS_DB_HOST=$(echo "$SECRET_JSON" | jq -r '.DB_HOST')

echo "Secrets loaded. Starting WordPress..."

# Call the original WordPress entrypoint
exec docker-entrypoint.sh "$@"
