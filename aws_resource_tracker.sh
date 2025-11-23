#!/bin/bash


########################################################
# Author : Ashwin
# Date : 20-Nov-2025
# Version : V1.0
#
# This script will report the aws resource usage
########################################################


set -x

echo "Cron test run at: $(date)" >> /tmp/cron_test.log

# Log File
LOGFILE="/tmp/aws_report_$(date +%F_%H-%M).log"

# Aws reports

echo "AWS Resource Report - $(date)" >> $LOGFILE
echo "===============================" >> $LOGFILE

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "Print list of S3 buckets" >> $LOGFILE
aws s3 ls

# list EC2 Instance
echo "Print list of EC2" >> $LOGFILE
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
#aws ec2 describe-instances

# list AWS Lambda
echo "Print list of aws lambda" >> $LOGFILE
aws lambda list-functions

# list IAM users
echo "Print list of iam users" >> $LOGFILE
aws iam list-users

# Email report
echo "AWS Daily Report Attached" | mail -s "AWS Resource Report" -A "$LOGFILE" ashwinnd7@gmail.com



