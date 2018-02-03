#!/usr/bin/env bash
set -e

if [ "$#" -ne 1 ]
then
printf "Please supply desired Terraform action [plan|apply|destroy]."
exit 1
fi

TERRAFORM_ACTION=$1

cd environment-infrastructure
terraform init
terraform ${TERRAFORM_ACTION} -var-file=../variables/environment.tfvars
