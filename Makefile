version="v0.0.1"

init:
	@terraform init

build:
	@aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 176265959211.dkr.ecr.us-east-1.amazonaws.com
	@docker build -t simple-lambda-ecr scr
	@docker tag simple-lambda-ecr:latest 176265959211.dkr.ecr.us-east-1.amazonaws.com/simple-lambda-ecr:latest
	@docker push 176265959211.dkr.ecr.us-east-1.amazonaws.com/simple-lambda-ecr:latest

