# Call the setup module to create a random bucket prefix
run "initial-n" {
  command = plan

  variables {
    input = {
      n    = -1
      le_n = 3
    }
  }

  assert {
    condition     = output.next == 0
    error_message = "Invalid next value"
  }
}

run "second-number" {
  variables {
    input = {
      n    = 0
      le_n = 3
    }
  }
  assert {
    condition     = output.next == 1
    error_message = "Invalid next value"
  }
}

run "third-number" {
  variables {
    input = {
      n    = 1
      le_n = 3
    }
  }
  assert {
    condition     = output.next == 2
    error_message = "Invalid next value"
  }
}

run "fourth-number" {
  variables {
    input = {
      n    = 2
      le_n = 3
    }
  }
  assert {
    condition     = output.next == 3
    error_message = "Invalid next value"
  }
}

run "repeat-initial-number" {
  variables {
    input = {
      n    = 3
      le_n = 3
    }
  }
  assert {
    condition     = output.next == 0
    error_message = "Invalid next value"
  }
}
