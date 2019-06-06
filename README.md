# pclogstash

Steps:

1) Provision an EC2 instance in a VPC
2) Install docker and docker-compose on it
3) Clone this repo into the home directory of the current user on this EC2 instance.
3) Build the docker image, pclogstash: "docker build -t pclogstash ."
4) Create a folder "moredata" in the current repo. 
5) Run "docker-compose up -d". This will upload all data in the CSV files in the S3 bucket mentioned in the pipelines 
into the Elasticsearch domain mentioned in  the output{..} sections of the pipeline/*.conf files. 
Ensure the AWS Elasticsearch domain has a VPC Endpoint in your VPC and subnet.
