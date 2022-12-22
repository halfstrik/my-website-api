def handler(event, context):
    print('event: ', event)
    print('context: ', context)
    ip_address = event['requestContext']['identity']['sourceIp']
    return {
        'body': f'Hello from ZIP, your IP {ip_address}, event: {event} context: {context}',
        'headers': {
            'Content-Type': 'text/plain'
        },
        'statusCode': 200
    }
