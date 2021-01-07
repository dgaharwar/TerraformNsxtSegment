# nsxtSegment

## Goals
TF plan to deploy a new segment

## Prerequisites:
- TF is installed
- NSX-T API reachable
- NSX-T credentials configure as environment variables:
```
TF_VAR_nsx_user=******
TF_VAR_nsx_password=******
TF_VAR_nsx_server=******
```

## Environment:

TF plan has been tested against:

### terraform

```
Terraform v0.13.5
+ provider registry.terraform.io/vmware/nsxt v3.1.1
```

### NSX-T version:
- 3.1.0

## Input/Parameters:
- All variables stored in variables.tf

## Use the TF plan to:
- Create a new segment

## Run the terraform:
- to apply the plan
```
cd ~ ; git clone https://github.com/tacobayle/terraformNsxtSegment ; cd terraformNsxtSegment ; terraform init ; terraform apply -auto-approve``
```
- to destroy the plan
```
terraform destroy -auto-approve
```
