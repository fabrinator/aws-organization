variable "org" {
  default = {
    accounts = [
      {
        name  = "Default"
        key   = "mycompany-default"
        email = "root@company.com"
      }
    ]
    units = [
      {
        name = "MyProduct",
        key  = "mycompany-myproduct"
        accounts = [
          {
            name  = "FirstLevel"
            email = "first-level@company.com"
          }
        ]
        units = [
          {
            name = "Development",
            key  = "mycompany-myproduct-development"
            accounts = [
              {
                name  = "Blue"
                key   = "mycompany-myproduct-development-blue"
                email = "development@company.com"
              }
            ]
          },
          {
            name = "Production",
            key  = "mycompany-myproduct-production"
            accounts = [
              {
                name  = "Blue"
                key   = "mycompany-myproduct-production-blue"
                email = "production@company.com"
              }
            ]
          }
        ]
      },
      {
        name = "API",
        key  = "mycompany-myproductAPI"
        units = [
          {
            name = "Development",
            key  = "mycompany-myproduct-development"
            accounts = [
              {
                name  = "Blue"
                key   = "mycompany-myproduct-development-blue"
                email = "development@company.com"
              }
            ]
          },
          {
            name = "Production",
            key  = "mycompany-myproduct-production"
            accounts = [
              {
                name  = "Blue"
                key   = "mycompany-myproduct-production-blue"
                email = "production@company.com"
              }
            ]
          }
        ]
      }
    ]
  }
}
