aws_region                          = "eu-west-1"
aws_profile                         = "testing"
aws_creds_file                      = "/Users/nickschwaderer/.aws/credentials"

automate_cidrs                      = ["53.61.3.2/32"]
automate_key_name                   = "schwad_key"
automate_ssh_user_private_key       = "/Users/nickschwaderer/.ssh/id_rsa"
automate_ingest_token               = "token1234"
automate_admin_password             = "zaq12wsx"
automate_create                     = true

automate_instance_type              = "t3.large"
automate_products                   = ["automate"] # or ["automate", "infra-server"] for automate and chef server

# Note this should only be provided with a valid Automate license
automate_license = "dadjaslkdjsakldjaslkjdlaskjdlaskdjaskldjaskldjaskldj"

automate_enabled_profiles = [
  {
    "name"    = "cis-aws-benchmark-level1",
    "version" = "latest",
    "owner"   = "admin"
  },
  {
    "name"    = "cis-sles11-level1",
    "version" = "1.1.0-7",
    "owner"   = "admin"
  }
]

tags = {
  "X-Dept" = "Eng",
  "X-Contact" = "nschwaderer@chef.io",
  "X-Project" = "testing with automate and InSpec"
}
