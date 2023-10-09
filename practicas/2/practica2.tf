resource "local_file" "prueba" {
  count = 2
  content  = "Lista de Productos para el proximo mes"
  filename = "prueba-${random_string.sufijo[count.index].id}.txt"
}

resource "random_string" "sufijo" {
  count = 2
  length  = 4
  special = false
  upper   = false
  numeric = false
}
