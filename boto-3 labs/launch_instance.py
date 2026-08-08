import boto3

ec2 = boto3.client("ec2")

response = ec2.run_instances(
    ImageId="ami-00948338a4aeec604",
    InstanceType="t3.micro",
    KeyName="demo-05",
    SecurityGroupIds=["sg-0090b9c0d17b44a1d"],
    SubnetId="subnet-0d223bc25c5ad7884",
    MinCount=1,
    MaxCount=1
)

print("Instance ID:", response["Instances"][0]["InstanceId"])