module "outline" {
  source       = "./module/ec2"
  machine_name = "outline-${var.env_name[count.index]}"
  count        = 3
}