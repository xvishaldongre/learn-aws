SHELL:=/bin/bash
version="v0.0.1"

init:
	terraform init

plan:
	terraform plan
apply:
	terraform apply --auto-approve
destroy:
	terraform destroy --auto-approve


set_secrets:
	gh secret set AWS_ACCESS_KEY_ID -b $$(terraform output -raw publisher_access_key)
	gh secret set AWS_SECRET_ACCESS_KEY -b $$(terraform output -raw publisher_secret_key)
	gh secret set AWS_REGION -b $$(terraform output -raw aws_region)
	gh secret set ECR_REPOSITORY_NAME -b $$(terraform output -raw ecr_repository_name)
	gh secret list

test:
	echo $$(terraform output -raw publisher_access_key)
	