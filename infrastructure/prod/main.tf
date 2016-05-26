provider "aws" {
  region = "ap-northeast-1"
  profile = "main"
}

module "iam" {
  source = "../modules/iam"
}

output "lambda_function_role_id" {
  value = "${module.iam.lambda_function_role_id}"
}
