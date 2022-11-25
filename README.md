# My Website Infrastructure

Deploy my website (www.sergeypetrunin.com) to AWS via CloudFormation

Templates adapted from:
https://github.com/aws-samples/amazon-cloudfront-secure-static-site
It appears that Lambda is no longer needed, commented out.

Deploy is performed by copying templates and files to S3 buckets.
Manually created CloudFormation stack in AWS UI.

## Create/update stack from command line

aws cloudformation list-stack \
  --stack-status-filter CREATE_COMPLETE

aws cloudformation create-stack \
 ~ or ~
aws cloudformation update-stack \
  --stack-name MyWebsite \
  --template-body file://templates/main.yaml \
  --parameters ParameterKey=DomainName,ParameterValue=sergeypetrunin.com \
               ParameterKey=SubDomain,ParameterValue=www \
               ParameterKey=HostedZoneId,ParameterValue=<my-hosted-zone-id> \
               ParameterKey=CreateApex,ParameterValue=no
