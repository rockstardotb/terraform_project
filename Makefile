# make build
build:
	docker build -t terraform_project .
# make run
run:
	docker run -i -t --name terraform_project -v ~/Desktop/terraform_project:/app -p 8000:8000 -d terraform_project /bin/bash
# make exec
exec:
	docker exec -i -t terraform_project /bin/bash
# stop
stop:
	docker stop terraform_project
# rm
remove:
	docker rm terraform_project
