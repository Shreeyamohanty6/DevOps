# AWS Resource Tracker

A simple Bash script that uses the AWS CLI to list commonly used AWS resources and saves the output to a report file.

## Features

* Lists all Amazon S3 buckets
* Lists Amazon EC2 instance IDs
* Lists AWS Lambda functions
* Lists IAM users
* Stores the output in a single report file (`resource_tracker.txt`)

## Prerequisites

Before running the script, ensure you have:

* Bash
* AWS CLI v2 installed
* Valid AWS credentials configured (`aws configure`) or an IAM role attached to the EC2 instance
* Required IAM permissions for:

  * Amazon S3
  * Amazon EC2
  * AWS Lambda
  * IAM

## Installation

Clone the repository:

```bash
git clone https://github.com/<your-username>/<repository-name>.git
cd <repository-name>
```

Make the script executable:

```bash
chmod +x resource_tracking.bash
```

## Usage

Run the script:

```bash
./resource_tracking.bash
```

After execution, a report file named `resource_tracker.txt` will be created in the current directory.

## Sample Output

```text
===== S3 Buckets =====
my-demo-bucket

===== EC2 Instances =====
"i-042422c23a9955b61"

===== Lambda Functions =====
{
    "Functions": []
}

===== IAM Users =====
{
    "Users": []
}
```

## Technologies Used

* Bash
* AWS CLI
* jq (for parsing EC2 instance IDs)

## Future Improvements

* Add error handling for failed AWS CLI commands
* Generate timestamped report files
* Export reports in CSV or JSON format
* Add support for additional AWS services such as:

  * VPC
  * RDS
  * ECS
  * EKS
  * CloudWatch
  * DynamoDB
  * Elastic Load Balancer
* Add logging and execution status

## Author

**Shreeyam Mohanty**

DevOps | Cloud | Site Reliability Engineering (SRE)
