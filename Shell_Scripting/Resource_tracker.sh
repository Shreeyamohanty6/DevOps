#!/bin/bash

OUTPUT_FILE="resource_tracker.txt"

echo "===== S3 Buckets =====" > "$OUTPUT_FILE"
aws s3 ls >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "===== EC2 Instances =====" >> "$OUTPUT_FILE"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "===== Lambda Functions =====" >> "$OUTPUT_FILE"
aws lambda list-functions >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "===== IAM Users =====" >> "$OUTPUT_FILE"
aws iam list-users >> "$OUTPUT_FILE"

echo "Report generated: $OUTPUT_FILE"