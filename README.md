# My Website Infrastructure

Deploy my website (www.sergeypetrunin.com) to AWS via CloudFormation

Templates adapted from:
https://github.com/aws-samples/amazon-cloudfront-secure-static-site
It appears that Lambda is no longer needed, commented out.

Deploy is performed by copying templates and files to S3 buckets.
Execute `build_deploy.sh` after CloudFormation stack is created.

## Create/update stack from command line

See `aws-create-stack.sh` and `aws-update-stack.sh`
