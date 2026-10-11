output "vpc_ipams_lookup_filter" {
  description = "Map of filter values across all vpc_ipams_lookup, keyed the same as var.vpc_ipams_lookup"
  value       = { for k, v in data.aws_vpc_ipams.vpc_ipams_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "vpc_ipams_lookup_ipam_ids" {
  description = "Map of ipam_ids values across all vpc_ipams_lookup, keyed the same as var.vpc_ipams_lookup"
  value       = { for k, v in data.aws_vpc_ipams.vpc_ipams_lookup : k => v.ipam_ids if v.ipam_ids != null && length(v.ipam_ids) > 0 }
}
output "vpc_ipams_lookup_ipams" {
  description = "Map of ipams values across all vpc_ipams_lookup, keyed the same as var.vpc_ipams_lookup"
  value       = { for k, v in data.aws_vpc_ipams.vpc_ipams_lookup : k => v.ipams if v.ipams != null && length(v.ipams) > 0 }
}
output "vpc_ipams_lookup_region" {
  description = "Map of region values across all vpc_ipams_lookup, keyed the same as var.vpc_ipams_lookup"
  value       = { for k, v in data.aws_vpc_ipams.vpc_ipams_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

