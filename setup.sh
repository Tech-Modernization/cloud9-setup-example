#!/bin/bash

terraform_tmp=./terraform.zip
kubectl_tmp=./kubectl

curl -o $terraform_tmp -LO https://releases.hashicorp.com/terraform/0.12.10/terraform_0.12.10_linux_amd64.zip
sudo unzip $terraform_tmp -d /usr/local/bin/
rm $terraform_tmp

curl -o $kubectl_tmp -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.0/bin/linux/amd64/kubectl
chmod +x $kubectl_tmp
sudo mv $kubectl_tmp /usr/local/bin/kubectl

terraform --version
kubectl version
