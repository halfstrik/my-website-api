aws cloudformation create-stack \
  --stack-name MyAPI \
  --template-body file://templates/lambda-api.yaml \
  --capabilities CAPABILITY_IAM \
  --parameters ParameterKey=lambdaFunctionName,ParameterValue=my-function
