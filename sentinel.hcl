module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "./common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

module "azure-functions" {
  source = "./azure-functions/azure-functions.sentinel"
}

policy "enforce-mandatory-tags" {
    enforcement_level = "soft-mandatory"
}
  
policy "limit-cost-by-budget" {
       enforcement_level = "soft-mandatory"
}

policy "restrict-ec2-instance-type" {
    enforcement_level = "hard-mandatory"
}

policy "require-all-resources-from-pmr" {
    enforcement_level = "hard-mandatory"
}

policy "restrict-lambda-runtime" {
    enforcement_level = "soft-mandatory"
}


