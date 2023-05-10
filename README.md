# Deploying an AWS Organizational Units using Terraform

## Introduction

Using this repository you will be able to deploy [AWS Organizational Units](https://docs.aws.amazon.com/organizations/index.html) using [Terraform](https://developer.hashicorp.com/terraform/docs). You will use a module, variables, and outputs to accomplish this deployment.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

## Prerequisites

Before you get started with deploying the solution, you must install the
following prerequisites:

1. [AWS Command Line Interface (AWS CLI)](https://aws.amazon.com/cli/)
    -- for instructions, see [Installing the AWS
    CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)

1.  [Terraform](https://developer.hashicorp.com/terraform/docs)
    -- for instructions, see [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## Deploying the solution

The below steps deploy the reference implementation in AWS.

To deploy run the following commands from a
terminal session:

1.  Download code from GitHub repo 
    (<https://github.com/JoeTringali/terraform-aws-organization-organizatioal-units>).

2.  Edit the `terraform.tfvars` file to include the id of the organization's root organizational unit:

```
organization_root_id = "r-xxxx"
```

3. Create and edit a `backend.hcl` file to include S3 backend configuration:

```
  bucket = "tringali-joe-management"
  key    = "terraform/organization-organizational-units"
  region = "us-east-1"
```

4. Initialize the working directory:

```
  terraform init --backend-config=backend.hcl

```

5.  Make sure `providers.tf` is formatted correctly:

```
  terraform fmt
```

6. See what it's expecting for the organizational units:

```
  terraform plan
```
> You should then see what the outputs will produce.

7.  Deploy your organizational units:

```
  terraform apply
```

8. Enter `yes` at the prompt. It will then take a few minutes to finish running.

9. Monitor the progress and wait for the completion of the ```terraform apply``` command before
proceeding.

10. Confirm that the organizational units deployed:

```
  terraform state list
```

11. Check the returned list of resources to ensure the organizational units were successfully deployed.

12. In the [AWS Console browser window](https://aws.amazon.com/console/), navigate to **AWS Organizations** and confirm that your organizational units are listed.

## Cleanup

To avoid ongoing charges for resources you created, run the following command from a
terminal session:

```
  terraform apply -destroy 
```

or 

```
  terraform destroy
```
