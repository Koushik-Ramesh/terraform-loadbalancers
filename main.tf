module "alb-public" {
  source                    = "./vendor/modules/alb"
  ENV                       = var.ENV
  ALB_NAME                  = "roboshop-public"
  INTERNAL                  = false
}

module "alb-private" {
  source                    = "./vendor/modules/alb"
  ENV                       = var.ENV
  ALB_NAME                  = "roboshop-private"
  INTERNAL                  = true
}


# We cannot parametrize anything that's added in the source
# To limit that, we can use a tool called as Terrafile. All it does is, it clones the remote code fro the specified branch and make it locally available,


