# My Website Infrastructure

Deploy my website (www.sergeypetrunin.com) to AWS via CloudFormation

Templates adapted from:
https://github.com/aws-samples/amazon-cloudfront-secure-static-site
It appears that Lambda is no longer needed, commented out.

Deploy is performed by copying templates and files to S3 buckets.
Manually created CloudFormation stack in AWS UI.

## Create/update stack from command line

aws cloudformation create-stack \
  --stack-name MyAPI \
  --template-body file://templates/lambda-api.yaml
