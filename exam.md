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


