rm -rf build/
mkdir build/
cd lambda
zip ../build/deployment.zip index.py
cd ..

aws lambda update-function-code \
  --function-name my-function \
  --zip-file fileb://build/deployment.zip
