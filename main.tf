terraform {
  required_version = "~>1"
}

variable "input" {
  description = <<EOT
  The input with the current number `n` and the last number `le_n` of the sequence.

  `n` can be any integer between -1 and `le_n`. -1 is initial value which results `next` number to be 0.
  EOT
  type = object({
    n    = number
    le_n = number
  })

  validation {
    condition     = alltrue([var.input.n <= var.input.le_n, var.input.n >= -1])
    error_message = "n must be less than or equal to le_n and greater than or equal to -1"
  }
}

locals {
  s    = 1                        # step size
  N    = var.input.le_n + local.s # since the sequence is 0 indexed
  n    = var.input.n
  next = pow(((local.n + local.s) % local.N), (floor((local.n + local.s) / local.N) % 2)) * (local.n + local.s)
}

output "next" {
  description = "The next number in the sequence"
  value       = local.next
}
