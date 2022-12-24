from apig_wsgi import make_lambda_handler
from mywebsite.api import app

# Configure this as your entry point in AWS Lambda
handler = make_lambda_handler(app)
