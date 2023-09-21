module "virtual_machine" {
  source = "./modules/virtual_machine"
  resource_group_name        = var.resource_group_name
  resource_group_location    = var.resource_group_location
}