# POC of Eventing of a Global Dynamo DB table

## Prerequisites

You will need to:
* Install [Terraform 0.11.3](https://www.terraform.io) 
* Setup an [AWS account](https://aws.amazon.com/account/) and a power user account!

Optional (but recommended):
* If you are not wed to Vim/Nano/Emacs then I would highly recommend using [IntelliJ Community Edition](https://www.jetbrains.com/idea/download).
It is an excellent IDE with plugin support for [HashiCorp Configuration Language (HCL),](https://github.com/hashicorp/hcl) 
Terraform's configuration syntax of choice.

Recommended reading for those new to Terraform:
* [Introduction to Terraform](https://www.terraform.io/intro/index.html)

Optional reading for all:
* [Terraform up and Running](https://www.terraformupandrunning.com/) - This is available on Safari Books for those with a subscription

## Project Strcture

TODO

## Running the Project

### Assumptions

1.  You have defined valid AWS credentials in `~/.aws/credentials` under the default profile. e.g:
    ```
    [default]
    region = us-west-2
    aws_session_token = [TOTALLY_REAL_SESSION_TOKEN]
    aws_security_token = [TOTALLY_REAL_SECURITY_TOKEN]
    aws_secret_access_key = [TOTALLY_REAL_SECRET_ACCESS_KEY_ID]
    output = json
    aws_access_key_id = [TOTALLY_REAL_ACCESS_KEY_ID]
    ```
    Do not be alarmed if you dont have all the lines listed above. It will vary between federated and non-federated accounts.

### Creating an Environment

TODO

## Destroying an Environment

TODO

## License

TODO

## Acknowledgments

Utilising:
* [Terraform](https://www.terraform.io)
* [AWS boto3](https://boto3.readthedocs.io/en/latest/)
