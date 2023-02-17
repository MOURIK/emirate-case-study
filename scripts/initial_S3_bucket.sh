#!/bin/bash

# Set variables
S3_BUCKET_NAME="tfstate-bucket"
KMS_KEY_ALIAS="alias/kms-key"

# Create KMS key
KMS_KEY_ID=$(aws kms create-key --description "KMS key to encrypt S3 bucket" --alias $KMS_KEY_ALIAS --query KeyMetadata.KeyId --output text)

# Enable S3 default encryption with KMS
aws s3api put-bucket-encryption --bucket $S3_BUCKET_NAME --server-side-encryption-configuration '{"Rules":[{"ApplyServerSideEncryptionByDefault":{"SSEAlgorithm":"aws:kms","KMSMasterKeyID":"'"$KMS_KEY_ID"'"}}]}'

# Create S3 bucket
aws s3api create-bucket --bucket $S3_BUCKET_NAME --create-bucket-configuration LocationConstraint=us-west-2

# Wait for bucket to be created
aws s3api wait bucket-exists --bucket $S3_BUCKET_NAME

# Add a tag to the bucket
aws s3api put-bucket-tagging --bucket $S3_BUCKET_NAME --tagging '{"TagSet":[{"Key":"Name","Value":"Example Bucket"}]}'
