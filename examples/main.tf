module "organization" {
  source = "../"

  feature_set = "ALL"

  organization = {
    accounts = [
      {
        name  = "iac"
        email = "fabri1492+aws+org+iac@hotmail.com"
      }
    ]
    units = [
      {
        name = "crc",
        units = [
          {
            name = "Development",
            accounts = [
              {
                name  = "crc"
                email = "fabri1492+aws+org+crc+dev@hotmail.com"
              }
            ]
          },
          {
            name = "Production",
            accounts = [
              {
                name  = "crc"
                email = "fabri1492+aws+org+crc+prod@hotmail.com"
              }
            ]
          }
        ]
      }
    ]
  }
}
 
