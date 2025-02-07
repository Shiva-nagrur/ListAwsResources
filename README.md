# ListAwsResources

# AWS Resource Listing Script

## Overview
This script lists various AWS resources within a specified region using the AWS CLI.

## Author
**Name:** Shivakumar N  
**Date:** 24/01/2025  
**Version:** 1.0  

## Resources Listed
The script retrieves information for the following AWS services:
1. EC2 Instances
2. S3 Buckets
3. RDS Instances
4. IAM Users
5. VPCs
6. Subnets
7. Route Tables
8. Security Groups
9. EBS
10. ELB
11. CloudFront
12. CloudWatch
13. CloudFormation
14. SNS
15. SQS

## Prerequisites
- AWS CLI installed
- AWS CLI configured with credentials (`aws configure`)

## Usage
### Command Syntax
```bash
./Basics.sh <Region> <Service_Name>
```

### Example
To list EC2 instances in `us-east-1` region:
```bash
./Basics.sh us-east-1 ec2
```

## AWS CLI Verification
Before running the script, ensure the AWS CLI is installed and configured properly:
```bash
aws --version
```
```bash
aws configure list
```

## How It Works
- The script checks if AWS CLI is installed and configured.
- Based on the provided service name, it executes the corresponding AWS CLI command.
- Output is saved in JSON files named after the services (e.g., `ec2.json`, `s3.json`).

## Supported Services & Commands
| Service Name    | AWS CLI Command |
|---------------|----------------|
| ec2          | `aws ec2 describe-instances` |
| s3           | `aws s3api list-buckets` |
| rds          | `aws rds describe-db-instances` |
| iam          | `aws iam list-users` |
| vpc          | `aws ec2 describe-vpcs` |
| subnet       | `aws ec2 describe-subnets` |
| route-table  | `aws ec2 describe-route-tables` |
| security-group | `aws ec2 describe-security-groups` |
| ebs          | `aws ec2 describe-volumes` |
| elb          | `aws elb describe-load-balancers` |
| cloudfront   | `aws cloudfront list-distributions` |
| cloudwatch   | `aws cloudwatch list-metrics` |
| cloudformation | `aws cloudformation list-stacks` |
| sns          | `aws sns list-topics` |
| sqs          | `aws sqs list-queues` |

## Error Handling
- If incorrect arguments are passed, an error message is displayed.
- If AWS CLI is missing or not configured, the script exits with an error.
- If an invalid service name is provided, an error message is displayed.

## License
This script is open-source and free to use and modify.

---

Enjoy automating AWS resource listing! 🚀

