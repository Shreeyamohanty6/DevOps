import boto3

ec2 = boto3.client("ec2")

ec2.terminate_instances(
    InstanceIds=["i-039c805c7f4557e5d"]  # Replace with your instance ID
)

print("Termination request sent")