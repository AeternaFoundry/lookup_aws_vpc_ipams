variable "vpc_ipams_lookup" {
  description = <<EOT
Map of vpc_ipams_lookup, attributes below
Optional:
    - ipam_ids
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    ipam_ids = optional(list(string))
    region   = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

