# Workshop 

## Requirements

- [3DS OUTSCALE Terraform Provider](https://github.com/outscale-dev/terraform-provider-outscale)
- terraform: [https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_linux_amd64.zip](terraform_0.13.4_linux_amd64.zip])
- jq
- ansible-galaxy install geerlingguy.nginx --roles-path ./roles

## Configure

Add `terraform/terraform.tfvars` with the following contents:
```
credentials = {
  "access_key" = "..."
  "secret_key" = "..."
}

storage = 20

name = "nginx"
```

## Deploy

```bash
./make.sh
```

### Manual deployment 

```bash
cd terraform
terraform init
terraform plan
#  terraform state replace-provider registry.terraform.io/-/outscale registry.terraform.io/outscale-dev/outscale
terraform apply
cd -
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook deploy.yml
```

## Annex

### Vim color syntaxing

```
augroup tfvars
  au!
  autocmd BufNewFile,BufRead \*.tfvars   set syntax=tf
augroup END
```
