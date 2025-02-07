#!/bin/bash

####################################################################

#This script is intended to list all resources in AWS account
#Author : Shivakumar N
#Date : 24/01/2025
#Version : 1.0
#This script will list the following resources in AWS
#1. EC2 Instances
#2. S3 Buckets
#3. RDS Instances
#4. IAM Users
#5. VPCs
#6. Subnets
#7. Route Tables
#8. Security Groups
#9. EBS 
#10. ELB
#11. CloudFront
#12. CloudWatch
#13. CloudFormation
#14. SNS 
#15. SQS

#Usage : ./Basics.sh <Region> <Service Name>
#Example : ./Basics.sh us-east-1 ec2

####################################################################

#Check if the required arguments are passed
 if [ $# -ne 2 ]; then
    echo "Usage : ./File_name.sh <Region> <Service_Name>"
    exit 1
fi

#There are 2 ways to talk to AWS
#1. Using AWS CLI
#2. Using curl and API calls (Not recommended)
#In this script we will be using AWS CLI to make the API calls
#In python There is a module known as Boto3 which is used to talk to AWS

#Check if AWS CLI is installed
if ! command -v aws &> /dev/null
then
    echo "AWS CLI could not be found"
    exit 1
fi

#check if AWS CLI is configured
if [ ! -d ~/.aws ]; then
    echo "AWS CLI is not configured"
    exit 1
fi 

#Execute the AWS CLI command based on the service name
case $2 in
    ec2)
        aws ec2 describe-instances --region $1 > ec2.json
        ;;
    s3)
        aws s3api list-buckets --region $1 > s3.json
        ;;
    rds)
        aws rds describe-db-instances --region $1 > rds.json
        ;;
    iam)
        aws iam list-users --region $1 > iam.json
        ;;
    vpc)
        aws ec2 describe-vpcs --region $1 > vpc.json
        ;;
    subnet)
        aws ec2 describe-subnets --region $1 > subnet.json
        ;;
    route-table)
        aws ec2 describe-route-tables --region $1 > route-table.json
        ;;
    security-group)
        aws ec2 describe-security-groups --region $1 > security-group.json
        ;;
    ebs)
        aws ec2 describe-volumes --region $1 > ebs.json
        ;;
    elb)
        aws elb describe-load-balancers --region $1 > elb.json
        ;;
    cloudfront)
        aws cloudfront list-distributions --region $1 > cloudfront.json
        ;;
    cloudwatch)
        aws cloudwatch list-metrics --region $1 > cloudwatch.json
        ;;
    cloudformation)
        aws cloudformation list-stacks --region $1 > cloudformation.json
        ;;
    sns)
        aws sns list-topics --region $1 > sns.json
        ;;
    sqs)
        aws sqs list-queues --region $1 > sqs.json
        ;;
    *)
        echo "Invalid Service Name"
        exit 1
        ;;
esac

