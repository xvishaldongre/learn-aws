import json

def lambda_handler(event, context):
    print("I'm running inside AWS Lambda.")
    print("Can you see me?")
    print("Hey, Tell me can you see me?")

    return {
        "isBase64Encoded": False,
        "statusCode": 200,
        "headers": {"Content-Type": "application/json"},
        "body": json.dumps({"status": "success"}),
    }