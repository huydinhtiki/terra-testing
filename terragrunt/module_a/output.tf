output "basic" {
  value = "${out.a + out.b.c + out.b.d}"
}