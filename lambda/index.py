import requests


def handler(event, context):
    print('event: ', event)
    print('context: ', context)
    ip_address = event['requestContext']['identity']['sourceIp']

    response = requests.get('https://api.discogs.com/releases/249504')
    response_json = response.json()
    record_id = response_json['id']
    record_uri = response_json['uri']

    return {
        'body': f'Hello from ZIP, your IP {ip_address}, {record_id}, {record_uri}',
        'headers': {
            'Content-Type': 'text/plain'
        },
        'statusCode': 200
    }
