dev-apply:
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=environments/dev/statte.tfvars
	terraform apply -auto-approve -var-file environments/dev/main.tfvars

dev-destroy:
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=environments/dev/statte.tfvars
	terraform destroy -auto-approve -var-file environments/dev/main.tfvars

prod-apply:
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=environments/dev/statte.tfvars
	terraform apply -auto-approve -var-file environments/prod/main.tfvars

prod-destroy:
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config=environments/dev/statte.tfvars
	terraform destroy -auto-approve -var-file environments/prod/main.tfvars