This repo creates the infrastructure to allow CICD with deployments via terraform.

Services created include:
s3 for remote state
dynamodb for state locking
codecommit, codebuild, codepipeline for CICD to run terraform within codebuild.
roles and policies (may need to edit for tighter restrictions)

To run:
	terraform init
	terraform plan -out=plan
	terraform apply plan

(default names set for the s3 and dynamodb in variables.tf, may need to change if s3 name taken)
(should be run on the mgmt AWS account assuming separate mgmt, dev, stg, prod accounts exist)