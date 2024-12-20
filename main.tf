resource "null_resource" "terrateam-test-01" {
provisioner "local-exec" {
  command = "echo Terrateam deployment in progress"
 }
}
