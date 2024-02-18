import boto3

# Specify the AWS region explicitly
region_name = 'eu-west-2'

# Create the ECR client with the specified region
ecr_client = boto3.client('ecr', region_name=region_name)

# Proceed with your ECR operations
repository_name = "my_cloud_native_repo"
response = ecr_client.create_repository(repositoryName=repository_name)

repository_uri = response['repository']['repositoryUri']
print(repository_uri)
