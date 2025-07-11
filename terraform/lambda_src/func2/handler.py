def lambda_handler(event, context):
    return {
        "statusCode": 200,
        "body": f"Hello from {context.function_name}"
    }
