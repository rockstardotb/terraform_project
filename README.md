# terraform_project
This repo follows my progress as I go through "Terraform: Up and Running" by Yevgeniy Brikman

# To run in docker container (recommended)
$ make build

$ make run

$ make exec

Note, to use the docker container, you need to create a file named 'awsKeys.sh' in the terraform_project directory. Within the file, export variables for your AWS access key ID and secret key. It should look like the following:

#!/bin/sh

export AWS_ACCESS_KEY_ID=<it>key_id goes here</it>

export AWS_SECRET_ACCESS_KEY=<it>secret access key goes here</it>

