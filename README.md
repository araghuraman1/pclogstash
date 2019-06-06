# personalcapitallogstash

Steps:

1) Provision an EC2 instance in a VPC
2) Install docker and docker-compose on it
3) Clone this repo into the home directory of the curren user on this EC2 instance.
4) Run "docker-compose up -d". This will upload all data in the CSV files in the S3 bucket mentioned in the pipelines 
into the Elasticsearch domain mentioned in  the output{..} sections of the pipeline/*.conf files. 
Ensure the AWS Elasticsearch domain has a VPC Endpoint in your VPC and subnet.
