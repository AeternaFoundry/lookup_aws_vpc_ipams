data "aws_vpc_ipams" "vpc_ipams_lookup" {
  for_each = var.vpc_ipams_lookup

  ipam_ids = each.value.ipam_ids
  region   = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

