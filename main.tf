module "rg" {
  for_each = var.rgs

  source = "./modules/resource_group"

  name     = each.value.name
  location = each.value.location
}