from flask import Flask
import requests as requests

app = Flask(__name__)


@app.route("/")
def hello_world():
    response = requests.get('https://api.discogs.com/releases/249504')
    response_json = response.json()
    record_id = response_json['id']
    record_uri = response_json['uri']

    return {
        'message': f'Hello, your record info {record_id}, {record_uri}',
    }


@app.route("/health")
def health():
    return {'status': 'ok'}
