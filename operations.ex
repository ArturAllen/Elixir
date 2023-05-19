# Arithmetic operations #
IO.puts(2 + 2) # Simple adition
IO.puts(2 - 1) # Simple subtraction
IO.puts(2 * 5) # Simple multiplication
IO.puts(10 / 5) # Simple division

IO.puts(div(10, 5)) # Integer division
IO.puts(rem(10, 3)) # Division remainder

# Boolean operations #
IO.puts(2+3 == 5) # Returns true

IO.puts(-20 || true)
IO.puts(false || 42)
IO.puts(42 && true)
IO.puts(42 && nil)

IO.puts(!42)
IO.puts(!false)

IO.puts(true and 42)  # with these operands, first value MUST be boolean
IO.puts(false or true)
IO.puts(not false)

# Comparison #
IO.puts(1 > 2)
IO.puts(1 != 2)
IO.puts(2 == 2)
IO.puts(1 <= 2)

IO.puts(2 == 2.0) # true
IO.puts(2 === 2.0) # Strict comparison; false

# String interpolation
name = "Sean"
IO.puts("Hello #{name}")

# String concatenation
IO.puts("Hello " <> name)









