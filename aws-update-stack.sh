aws cloudformation update-stack \
  --stack-name MyAPI1 \
  --template-body file://templates/lambda-api.yaml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters ParameterKey=apiGatewayStageName,ParameterValue=dev
