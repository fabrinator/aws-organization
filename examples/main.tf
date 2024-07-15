module "organization" {
  source = "../"
  aws_service_access_principals = ["sso.amazonaws.com"]
  feature_set = "ALL"

  organization = {
    units = [
      {name = "infrastructure",
        accounts = [
        {
          name = "shared"
          email = "fabri1492+aws+infra+shared@hotmail.com"
        }
        ]
      },
      {
        name = "crc"
        units = [
          {
            name = "bootcamp",
            accounts = [
              {
                name = "bootcamp-account"
                email = "fabri1492+aws+bootcamp@hotmail.com"
              }
            ]
          },
          {
            name = "Development",
            accounts = [
              {
                name  = "crc-dev"
                email = "fabri1492+aws+org+crc+dev2@hotmail.com"
              }
            ]
          },
          {
            name = "Production",
            accounts = [
              {
                name  = "crc-prod"
                email = "fabri1492+aws+org+crc+prod2@hotmail.com"
              }
            ]
          }
        ]
      }
    ]
  }
}
 
