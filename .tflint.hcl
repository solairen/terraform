# TFLint configuration
# https://github.com/terraform-linters/tflint

config {
  call_module_type = "local"
}

plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

# AWS provider plugin
plugin "aws" {
  enabled = true
  version = "0.38.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

# Azure provider plugin
plugin "azurerm" {
  enabled = true
  version = "0.28.0"
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}

# Naming convention rules
rule "terraform_naming_convention" {
  enabled = true
}

# Documented outputs
rule "terraform_documented_outputs" {
  enabled = true
}

# Documented variables
rule "terraform_documented_variables" {
  enabled = true
}

# Standard module structure
rule "terraform_standard_module_structure" {
  enabled = true
}

# Require terraform version
rule "terraform_required_version" {
  enabled = true
}

# Require provider version
rule "terraform_required_providers" {
  enabled = true
}

# Unused declarations
rule "terraform_unused_declarations" {
  enabled = true
}

# Workspace remote
rule "terraform_workspace_remote" {
  enabled = true
}
