# Terraform EC2

A hands-on Terraform exercise for learning how to provision an Amazon EC2 instance using configurable Terraform variables.

## What this project demonstrates

This repository demonstrates Terraform configuration for an EC2 instance with configurable:

* AMI
* Instance type
* Subnet
* Security group
* Public IP association
* EBS root volume
* EBS encryption
* Volume size and type
* Resource naming

The configuration also exposes the EC2 instance ID and private IP through Terraform outputs.

## Terraform Concepts Practiced

This project was created as part of hands-on Terraform and AWS learning.

Key concepts practiced:

* Terraform variables
* `terraform.tfvars`
* AWS provider configuration
* EC2 resource provisioning
* Security group association
* Subnet placement
* EBS root block configuration
* EBS encryption
* Terraform outputs
* Local values
* Configurable resource properties

## Configuration

The EC2 configuration is controlled through Terraform variables.

Example:

```hcl
instance_type = "t3.micro"
volume_size   = 50
volume_type   = "gp3"
```

Environment-specific values such as the AMI, subnet, and security group should be replaced with IDs from your own AWS environment.

## Outputs

After applying the configuration, Terraform exposes:

* EC2 private IP
* EC2 instance ID

Example:

```text
private_ip
instance_id
```

## Repository Structure

```text
TerraformEC2-module/
├── main.tf
├── provider.tf
├── variable.tf
├── terraform.tfvars
└── output.tf
```

## Getting Started

### Prerequisites

* Terraform
* AWS CLI
* An AWS account
* AWS credentials configured locally
* An existing VPC subnet
* An existing security group
* A valid AMI ID for the selected AWS region

### Initialize Terraform

```bash
terraform init
```

### Review the execution plan

```bash
terraform plan
```

### Create the EC2 instance

```bash
terraform apply
```

### View outputs

```bash
terraform output
```

### Destroy the infrastructure

```bash
terraform destroy
```

## Learning Context

This repository represents a hands-on Terraform exercise focused on understanding EC2 provisioning and Terraform's variable and output mechanisms.

It was created while learning AWS infrastructure provisioning with Terraform.

For a more complete AWS infrastructure implementation, see:

**[Infrastructure Provisioning & Container Deployment Platform](https://github.com/shikharvermasv/cloud-infrastructure-provisioner)**

## Note

This is a learning project and is not intended to represent a production-ready EC2 deployment architecture.
