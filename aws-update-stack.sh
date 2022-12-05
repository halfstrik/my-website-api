aws cloudformation update-stack \
  --stack-name MyAPI \
  --template-body file://templates/lambda-api.yaml \
  --capabilities CAPABILITY_IAM \
  --parameters ParameterKey=apiGatewayHTTPMethod,ParameterValue=POST \
               ParameterKey=apiGatewayName,ParameterValue=my-api \
               ParameterKey=apiGatewayStageName,ParameterValue=call \
               ParameterKey=lambdaFunctionName,ParameterValue=my-function
