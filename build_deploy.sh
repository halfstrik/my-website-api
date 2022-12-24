# See this doc:
# https://docs.aws.amazon.com/lambda/latest/dg/python-package.html

rm -rf build/
mkdir build/

# python3 -m venv venv
. ./venv/bin/activate
pip install -r requirements.txt
deactivate
cd venv/lib/python3.9/site-packages
zip -r ../../../../build/deployment.zip .
cd ../../../../
zip -g build/deployment.zip -r lambda

aws lambda update-function-code \
  --function-name my-website-api-function \
  --zip-file fileb://build/deployment.zip
