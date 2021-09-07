import boto3

athena = boto3.client('athena')


def execute_athena_query(query_str, bucket):
    s3_dest = f's3://{bucket}/athena/results/'
    query_id = athena.start_query_execution(
        QueryString= query_str, 
         ResultConfiguration={'OutputLocation': s3_dest}
    )['QueryExecutionId']
        
    return f'{s3_dest}{query_id}.csv'    