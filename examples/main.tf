module "organization" {
  source = "../"

  feature_set = "ALL"

  organization = {
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
              },
              {
                name  = "iac"
                email = "fabri1492+aws+org+iac@hotmail.com"
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
 
