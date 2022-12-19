```Exam 0.1``` 100%
* Question 20: To prevent this, Terraform state file lock must be used. Is there a additional terraform code required to implement this functionality with local backend?
    * False


```Exam 0.2``` 100%
* Question 6:James has decided to not use the terraform.tfvars file, instead, he wants to store all data into custom.tfvars file? Is it possible?
    * Yes, terraform apply -var-file="custom.tfvars"

* Question 30: Alice has started to make use of Terraform Cloud Workspace and has linked a Git Repository to it.
Whenever a new code change is committed to version control repository, will Terraform automatically run the terraform plan operation?
    * True

```Exam 0.3``` 

* Question 8: Alice works for Enterprise Corp and they have recently started to use Terraform Cloud.
What is the way in which the log output of terraform plan and apply operation that are running in Terraform Cloud be streamed in the local terminal?
    * Remote Backends

* Question 13: Matthew has recently subscribed to Terraform Cloud Trial version.
As part of POC, he is testing the Sentinel feature. At what stage does the Sentinel feature run in Terraform Cloud?
    * Before APPLY operation

* Question 14: Alice wants to create a DOT file in Terraform.
Which terraform command can be used to create it?
    * terraform graph


* Question 23:
    Matthew is currently running a write operation on a terraform project and the state file is currently locked.
    If Bob runs a terraform state list command on the same project, will this action be allowed or blocked?
    * Allowed

```Exam 0.4``` 100%

* Question 6: Is the Terraform Workspace feature in Terraform Cloud same as the Terraform workspace feature that is present in the free open-source version of Terraform?
    * False

* Question 8: Which of the features are unique to Terraform Cloud BUSINESS Plan?
    * Audit Logging
    * Clustering Functionality
    * Private Network Connectivity

* Question 18: There is a requirement to use a specific branch instead of the default branch. What is the way to achieve this?
    * ref=v2.0.0

```Exam 0.5``` 100 %
* Question 7: What are the OS that are supported by Terraform ENTERPRISE?
    * Ubuntu
    * Oracle
    * RHEL
    * CentOS
    * Amazon Linux
    * Debian


* Question 10: Which among the following Terraform backends support State locking functionality?
    * S3
    * azurerm
    * consul


* Question 11: Which data storage among these is supported in Terraform Enterprise?
    * PostgreSQL

* Question 15: In a Terraform project, before using a new provider, what are the actions that needs to be performed?
    * Provider must first be initialized
    * Provider details must be declared within the terraform configuration



```Exam 0``` 100% 178 Questions total

* Question 9: Does the Terraform Cloud provide feature to encrypt the state file stored at-rest and also support SSL/TLS for in-transit data?
    * True

* Question 13: Which parameter in TERRAFROM SETTINGS BLOCK can be used to provide a specific acceptable version of the provider?
    * required_providers


* Question 14: Is it necessary to have Internet access to install the Terraform Provider Plugins?
    * No (Air Gapped Env)

* Question 19: When you run the terraform init operation, is the source code of the reference module also retreived?
    * True

* Question 20: James has decided to migrate the Terraform state file from localhost to S3 bucket
    * terraform init

* Question 24: Does HashiCorp verify all the modules that are published in the Terraform Public Registry?
    * No

* Question 28: Considering that AWS resources are created through Terraform, is it necessary that the Terraform state file always matches the current infrastructure that is running in AWS?
    * False

* Question 33:
    Alice has created 3 EC2 instances in AWS.
    John has manually terminated 1 EC2 instance through AWS Console.
    What is the way to reflect the updated change to your Terraform state?
    * terrafrom refresh

* Question 40: Medium Corp has been using the following code to pull the latest version of VPC module from Terraform Registry. What is the way to define module version?
    * Add version = "0.5"





```Exam 1``` 100%

* Question 5: Implicit dependency
    * instance = aws_instance.web_server.id


* Question 9: Explict dependency
    * depends_on = [aws_s3_bucket.company_data]


* Question 11: Terraform language
    * immutable
    * declarative
    * HCL (based)
    * JSON (optionally)

* Question 13: Terraform parallelism
    * 10 resources

* Question 14: Block type
    * resource
    * terraform
    * provider
    * data ..

* Question 15: Terrafrom recreate resource
    * terraform apply -replace=aws_instance.web
    * terraform taint (until 0.15.x)

* Question 18: A user runs terraform init on their RHEL based server and per the output, two provider plugins are downloaded
    * .terraform/providers

* Question 19: Environment variables
    * TF_VAR_(variable_name)

* Question 22: Phase when providers retrieve data
    * in > terraform plan

* Question 25: Terraform module download
    * terraform init
    * terraform get

* Question 27: Terraform platform availability?
    * Linux
    * Solaris
    * FreeBSD
    * Windows
    * macOS

* Question 29: NOT valid string function
    * tostring

* Question 42: Where does Terraform OSS store the local state for workspaces?
    * terraform.tfstate.d


```Exam 2``` 100%

* Question 1: Terraform OpenSourceSoftware/CLI state   file?
    * current working directory

* Question 8: Inspect the current state file?
    * terraform show

* Question 9: Terraform Enterprise & Cloud for Business
    * Private Network Connectivity
    * Audit Logs
    * SAML/SSO
    * Private Module Registry

* Question 11: The features of Terraform state
    * increased performance
    * determining the correct order to destroy resources
    * mapping configuration to real-world resources

* Question 14: In regards to Terraform state file, select all the statements below which are correct ..
    * Terraform Cloud always encrypts state at rest
    * storing state remotely can provide better security
    * should be protected from unauthorized access
    * local state is in plain-text

* Question 21: What Terraform command can be used to inspect the current state file?
    * terraform show

* Question 23: A workspace mapped to VCS repos?
    * 1

* Question 27: What are the ways the remaining configuration can be added to Terraform so it can initialize and communicate with the backend?
    * use the -backend-config=PATH
    * interactively on CLI
    * CLI key/value pairs

* Question 35: Terraform plan
    * creates an execution plan and determines what changes are required to achieve the desired state in the configuration file

* Question 37: Purpose of the local-exec provisioner?
    * to invoke local executable
    * to execute one or more commands

* Question 41: The calling module, the child module
    * module "servers" {}   < calling
    * source = "./my-vpc"   < child

* Question 51: The core Terraform workflow
    * Write
    * Plan
    * Apply

* Question 54: True or False? Workspaces provide similar functionality in the open-source, Terraform Cloud, and Enterprise versions of Terraform.
    * False

```Exam 3``` 98%

* Question 4: Data source return?
    * all possible data of a specific Amazon Machine Image from AWS


* Question 20: Provider alias?
    * using the same provider with different configurations for different resources

* Question 25:  Provide credentials
    * intergrated services (IAM, AzureMSI)
    * environment variables
    * hardcoding in block

* Question 32: Remove the version parameter and hit init again?
    * Terraform would use the existing module already downloaded

```Exam 4``` 91 %
* Question 12: Secure remote backend credentials
    * Environment vairables
    * credentials file

* Question 22: State locking supported
    * consul backend
    * s3 (with Dynamo) backend
    * kubernetes backend

* Question 27: Which of the following code snippets will properly configure a Terraform backend?
    * Backends are configured with a nested BACKEND block within the top-level TERRAFORM block

* Question 31: Advantages of using IaaC?
    * enables self-service for developers and operators alike
    * API-driven workflows
    * provides the ability to version control the infrastructure and application architecture

* Question 34: Where can you install providers from?
    * plugins directory
    * plugin cache
    * registry
    * official HashiCorp releases site

* Question 35: Advantages of using infrastructure as code (IaC) for your day-to-day operations? 
    * ensures the security of applications provisioned on managed infrastructure
    * version control
    * API-driven

* Question 48: Perform a dry run to ensure Terraform will create the right resources without deploying real-world resources?
    * terraform plan -out=thomas

* Question 49: Have security policies required?
    * Terraform OSS/CLI
    * Terraform Enterprise

* Question 56: Which of the following is the best description of a dynamic block?
    * produces nested configuration blocks instead of a complex typed value

* Question 57: True or False? In both Terraform OSS and Terraform Cloud/Enterprise, workspaces provide similar functionality of using a separate state file for each workspace.
    * True

* Question 17: True or False? When developing Terraform code, you must include a provider block for each unique provider so Terraform knows which ones you want to download and use.
    * False

```Exam 5```
* Question 8: Where is the most secure place to store credentials when using a remote backend?
    * defined outside of Terraform

* Question 13: Types of resource "aws_vpc" "prod-vpc" { "aws_vpc" "prod-vpc" {}
    * Block type > resource
    * Resource type > aws_vpc
    * Resource name  > prod-vpc

* Question 15: Types
    * Primitive types
        * bool
        * string
        * number
    * Complex,structural or collection types
        * list/tuples
        * maps/objects


* Question 44: Helps you share Terraform providers and Terraform modules across your organization ...
    * Private Module Registry


* Question 55: In Terraform OSS, workspaces generally use the same code repository while workspaces in Terraform Enterprise/Cloud are often mapped to different code repositories.
    * True

* Question 50: You have a number of different variables in a parent module that calls multiple child modules. Can the child modules refer to any of the variables declared in the parent module? 
    * No, it can only refer to the variables passed to the module

* Question 53: True or False? In order to use the terraform console command, the CLI must be able to lock state to prevent changes.
    * True

* Question 56: Beyond storing state, what capability can an enhanced storage backend, such as the remote backend, provide your organization?
    * execute your Terraform on infrastructure either locally or in Terraform Cloud