aws cloudformation create-stack \
  --stack-name MyAPI \
  --template-body file://templates/lambda-api.yaml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters ParameterKey=apiGatewayStageName,ParameterValue=dev
