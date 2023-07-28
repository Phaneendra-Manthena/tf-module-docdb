resource "aws_docdb_subnet_group" "default" {
  name       = "${var.env}-docbd-subnet-group"
  subnet_ids = var.subnet_ids
  tags = merge(
    local.common_tags,
    { Name = "${var.env}-docbd-subnet-group" }
  )

}