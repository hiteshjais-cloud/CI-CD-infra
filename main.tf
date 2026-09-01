resource "aws_ecrpublic_repository" "calculator-repo" {
  repository_name = "calculator-repo"
  catalog_data {
    architectures     = ["ARM,ARM 64,x86,x86-64"]
    operating_systems = ["Linux"]
  }

  tags = {
    env = "production"
  }
}
