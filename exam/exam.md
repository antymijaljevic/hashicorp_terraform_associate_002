```Exam 1```

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

* Question 19: Environment variables
    * TF_VAR_(variable_name)

* Question 22: Phase when providers retrieve data
    * in > terraform plan

* Question 25: Terraform module download
    * terraform init
    * terraform get

* Question 29: NOT valid string function
    * tostring


```Exam 2```

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

* Question 23: A workspace mapped to VCS repos?
    * 1

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


```Exam 3```

* Question 4: Data source return?
    * all possible data of a specific Amazon Machine Image from AWS


* Question 20: Provider alias?
    * using the same provider with different configurations for different resources

* Question 32: Remove the version parameter and hit init again?
    * Terraform would use the existing module already downloaded

```Exam 4```
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

* Question 48: Perform a dry run to ensure Terraform will create the right resources without deploying real-world resources?
    * terraform plan -out=thomas

* Question 49: Have security policies required?
    * Terraform OSS/CLI
    * Terraform Enterprise

* Question 56: Which of the following is the best description of a dynamic block?
    * produces nested configuration blocks instead of a complex typed value


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