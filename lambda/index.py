def handler(event, context):
    ip_address = event['requestContext']['identity']['sourceIp']
    return {
        'body': f'Hello from ZIP, your IP {ip_address}',
        'headers': {
            'Content-Type': 'text/plain'
        },
        'statusCode': 200
    }
