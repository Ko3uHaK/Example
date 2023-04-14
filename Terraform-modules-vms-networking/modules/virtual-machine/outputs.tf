output "vm_ids" {
  value = azurerm_virtual_machine.virtual_machines.*.id
}